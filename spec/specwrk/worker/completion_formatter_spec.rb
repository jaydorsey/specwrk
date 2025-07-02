# frozen_string_literal: true

require "specwrk/worker/completion_formatter"

RSpec.describe Specwrk::Worker::CompletionFormatter do
  before do
    allow(RSpec::Core::Formatters).to receive(:register)
      .with(described_class, :stop)
  end

  let(:instance) { described_class.new }
  let(:group_notification) { instance_double RSpec::Core::Notifications::ExamplesNotification, notifications: notifications }
  let(:notifications) { [instance_double(RSpec::Core::Notifications::ExampleNotification, example: example)] }

  let(:example) do
    instance_double RSpec::Core::Example,
      id: "foo.rb:1",
      full_description: "foobar",
      metadata: {
        execution_result: execution_result,
        file_path: "foo.rb",
        line_number: 1
      }
  end

  let(:execution_result) do
    instance_double RSpec::Core::Example::ExecutionResult,
      status: "passed",
      started_at: Time.now - 10,
      finished_at: Time.now,
      run_time: 10.0
  end

  describe "#example_passed" do
    subject { instance.stop(group_notification) }

    it { expect { subject }.to change(instance.examples, :length).from(0).to(1) }
  end
end
