# frozen_string_literal: true

require "specwrk/hookable"

RSpec.describe Hookable do
  describe "when extended" do
    subject(:bare) { Module.new.tap { |m| m.extend(Hookable) } }

    it "initializes @included_hooks and @setup_hooks on the module" do
      expect(bare.instance_variable_get(:@included_hooks)).to eq([])
      expect(bare.instance_variable_get(:@setup_hooks)).to eq([])
    end
  end

  # Define a DummyHookSource inside a let, so each example can
  # add hooks in isolation.
  let(:source) do
    stub_const("DummyHookSource", Module.new do
      extend Hookable
    end)
    DummyHookSource
  end

  let(:target_class) { Class.new }

  describe ".included" do
    let(:included_calls) { [] }
    let(:propagated_hooks) { [] }

    before do
      # capture on_included
      source.on_included { |base| included_calls << base }

      # register a dummy setup hook so we can detect propagation
      source.on_setup { |**_| propagated_hooks << :hit }

      # actually include into target_class
      source.included(target_class)
    end

    it "mixes in Hookable::ClassMethods" do
      expect(target_class.singleton_class.ancestors)
        .to include(Hookable::ClassMethods)
    end

    it "runs any on_included hooks with the target" do
      expect(included_calls).to eq([target_class])
    end

    it "propagates setup hooks onto the target_class" do
      # setup_hooks is the internal ivar on the target
      expect(target_class.instance_variable_get(:@setup_hooks)).not_to be_empty
    end
  end

  describe "setup invocation" do
    let(:setup_calls) { [] }

    before do
      source.on_setup { |**args| setup_calls << args }
      source.included(target_class)
    end

    it "calls each setup hook with the given arguments" do
      target_class.setup(foo: "bar", baz: 123)
      expect(setup_calls).to include(hash_including(foo: "bar", baz: 123))
    end
  end

  context "multiple setup hooks" do
    let(:order) { [] }

    before do
      source.on_setup { |**_| order << :first }
      source.on_setup { |**_| order << :second }
      source.included(target_class)
    end

    it "fires them in the order they were defined" do
      target_class.setup
      expect(order).to eq([:first, :second])
    end
  end
end
