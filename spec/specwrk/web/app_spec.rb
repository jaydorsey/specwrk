# frozen_string_literal: true

require "specwrk/web/app"

RSpec.describe Specwrk::Web::App do
  subject { mock_request.request(http_method, path).status }

  let(:mock_request) { Rack::MockRequest.new(described_class.new) }

  def stub_endpoint(klass, status_code)
    instance_double(klass, response: [status_code, {}, []]).tap do |dbl|
      allow(klass).to receive(:new).with(instance_of(Rack::Request)).and_return(dbl)
    end
  end

  context "GET /heartbeat" do
    let(:http_method) { "GET" }
    let(:path) { "/heartbeat" }

    before { stub_endpoint(Specwrk::Web::Endpoints::Heartbeat, 100) }

    it { is_expected.to eq 100 }
  end

  context "POST /pop" do
    let(:http_method) { "POST" }
    let(:path) { "/pop" }

    before { stub_endpoint(Specwrk::Web::Endpoints::Pop, 101) }

    it { is_expected.to eq 101 }
  end

  context "POST /complete" do
    let(:http_method) { "POST" }
    let(:path) { "/complete" }

    before { stub_endpoint(Specwrk::Web::Endpoints::Complete, 102) }

    it { is_expected.to eq 102 }
  end

  context "POST /seed" do
    let(:http_method) { "POST" }
    let(:path) { "/seed" }

    before { stub_endpoint(Specwrk::Web::Endpoints::Seed, 103) }

    it { is_expected.to eq 103 }
  end

  context "unmatched route" do
    let(:http_method) { "GET" }
    let(:path) { "/bogus" }

    before { stub_endpoint(Specwrk::Web::Endpoints::NotFound, 104) }

    it { is_expected.to eq 104 }
  end
end
