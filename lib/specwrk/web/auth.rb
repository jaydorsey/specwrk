# frozen_string_literal: true

require "rack/auth/abstract/request"

module Specwrk
  class Web
    class Auth
      def initialize(app)
        @app = app
      end

      def call(env)
        return @app.call(env) if [nil, ""].include? ENV["SPECWRK_SRV_KEY"]

        auth = Rack::Auth::AbstractRequest.new(env)

        return unauthorized unless auth.provided?
        return unauthorized unless auth.scheme == "bearer"
        return unauthorized unless Rack::Utils.secure_compare(auth.params, ENV["SPECWRK_SRV_KEY"])

        @app.call(env)
      end

      private

      def unauthorized
        [401, {"Content-Type" => "application/json"}, ["Unauthorized"]]
      end
    end
  end
end
