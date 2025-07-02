# frozen_string_literal: true

require "time"

require "specwrk/client"

require "rspec"
require "rspec/core/formatters/helpers"
require "rspec/core/formatters/console_codes"

module Specwrk
  class CLIReporter
    def report
      return 1 unless Client.connect?

      puts "\nFinished in #{total_duration} " \
                          "(total execution time of #{total_run_time})\n"

      client.shutdown

      if failure_count.positive?
        puts colorizer.wrap(totals_line, :red)
        1
      elsif pending_count.positive?
        puts colorizer.wrap(totals_line, :yellow)
        0
      else
        puts colorizer.wrap(totals_line, :green)
        0
      end
    rescue Specwrk::UnhandledResponseError
      puts colorizer.wrap("No examples run.", :red)
      1
    end

    private

    def totals_line
      summary = RSpec::Core::Formatters::Helpers.pluralize(example_count, "example") +
        ", " + RSpec::Core::Formatters::Helpers.pluralize(failure_count, "failure")
      summary += ", #{pending_count} pending" if pending_count > 0

      summary
    end

    def stats
      @stats ||= client.stats
    end

    def total_duration
      Time.parse(stats.dig(:completed, :meta, :last_finished_at)) - Time.parse(stats.dig(:completed, :meta, :first_started_at))
    end

    def total_run_time
      stats.dig(:completed, :meta, :total_run_time)
    end

    def failure_count
      stats.dig(:completed, :meta, :failures)
    end

    def pending_count
      stats.dig(:completed, :meta, :pending)
    end

    def example_count
      stats.dig(:completed, :examples).length
    end

    def client
      @client ||= Client.new
    end

    def colorizer
      ::RSpec::Core::Formatters::ConsoleCodes
    end
  end
end
