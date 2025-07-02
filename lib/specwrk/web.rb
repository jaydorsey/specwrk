# frozen_string_literal: true

require "specwrk/queue"

module Specwrk
  class Web
    PENDING_QUEUES = Queue.new { |h, key| h[key] = PendingQueue.new.tap { |q| q.previous_run_times_file = ENV["SPECWRK_SRV_OUTPUT"] } }
    PROCESSING_QUEUES = Queue.new { |h, key| h[key] = Queue.new }
    COMPLETED_QUEUES = Queue.new { |h, key| h[key] = CompletedQueue.new }

    def self.clear_queues
      [PENDING_QUEUES, PROCESSING_QUEUES, COMPLETED_QUEUES].each(&:clear)
    end
  end
end
