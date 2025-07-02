# frozen_string_literal: true

module Specwrk
  class Worker
    class NullFormatter
      RSpec::Core::Formatters.register self, :example_passed

      attr_reader :output

      def initialize(output)
        @output = output
      end

      def example_passed(_notification)
      end
    end
  end
end
