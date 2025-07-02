# frozen_string_literal: true

require "rack/mock"
require "specwrk/web/auth"

RSpec.describe Specwrk::Web::Auth do
  subject { response.status }

  let(:inner_app) { ->(_env) { [200, {}, ["OK"]] } }
  let(:middleware) { described_class.new(inner_app) }
  let(:response) { Rack::MockRequest.new(middleware).get("/", headers) }
  let(:headers) { {} }

  context "when SPECWRK_SRV_KEY is *not* set" do
    before do
      stub_const("ENV", {})
    end

    it { is_expected.to eq(200) }
  end

  context "when SPECWRK_SRV_KEY *is* set" do
    let(:token) { "super‑secret" }

    before do
      stub_const("ENV", {"SPECWRK_SRV_KEY" => token})
    end

    context "header not sent" do
      it { is_expected.to eq(401) }
    end

    context "wrong scheme" do
      let(:headers) { {"HTTP_AUTHORIZATION" => "Fooer #{token}"} }

      it { is_expected.to eq(401) }
    end

    context "invalid token" do
      let(:headers) { {"HTTP_AUTHORIZATION" => "Bearer wrong-token"} }

      it { is_expected.to eq(401) }
    end

    context "valid token" do
      let(:headers) { {"HTTP_AUTHORIZATION" => "Bearer #{token}"} }

      it { is_expected.to eq(200) }
    end
  end
end
