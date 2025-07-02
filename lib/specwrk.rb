# frozen_string_literal: true

require_relative "specwrk/version"

module Specwrk
  Error = Class.new(StandardError)

  # HTTP Client Errors
  ClientError = Class.new(Error)
  UnhandledResponseError = Class.new(ClientError)
  NoMoreExamplesError = Class.new(ClientError)
  CompletedAllExamplesError = Class.new(ClientError)

  @force_quit = false
  @starting_pid = Process.pid

  class << self
    attr_accessor :force_quit
    attr_reader :starting_pid
  end
end
