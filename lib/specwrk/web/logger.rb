# frozen_string_literal: true

module Specwrk
  class Web
    class Logger
      def initialize(app, out = $stdout)
        @app, @out = app, out
      end

      def call(env)
        start_time = Time.now
        start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        status, headers, body = @app.call(env)
        dur_ms = ((Process.clock_gettime(Process::CLOCK_MONOTONIC) - start) * 1000).round(4)

        remote = env["REMOTE_ADDR"] || env["REMOTE_HOST"] || "-"
        @out.puts "#{remote} [#{start_time.iso8601(6)}] #{env["REQUEST_METHOD"]} #{env["PATH_INFO"]} → #{status} (#{dur_ms}ms)"
        [status, headers, body]
      end
    end
  end
end
