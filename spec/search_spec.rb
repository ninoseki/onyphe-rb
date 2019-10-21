# frozen_string_literal: true

RSpec.describe Onyphe::Clients::Search, :vcr do
  subject { Onyphe::API.new }

  describe "#datascan" do
    it do
      res = subject.search.datascan(
        product: "HTTP Server",
        port: 443,
        os: "Windows",
        tls: true
      )
      expect(res).to be_a(Hash)
    end
  end

  describe "#synscan" do
    it do
      res = subject.search.synscan(
        port: 23,
        country: "FR",
        tag: "mirai"
      )
      expect(res).to be_a(Hash)
    end
  end

  describe "#inetnum" do
    it do
      res = subject.search.inetnum(organization: "OVH SAS")
      expect(res).to be_a(Hash)
    end
  end

  describe "#threatlist" do
    it do
      res = subject.search.threatlist(country: "RU")
      expect(res).to be_a(Hash)
    end
  end

  describe "#pastries" do
    it do
      res = subject.search.pastries(content: "hacked")
      expect(res).to be_a(Hash)
    end
  end

  describe "#resolver" do
    it do
      res = subject.search.resolver(ip: "124.108.0.0/16")
      expect(res).to be_a(Hash)
    end
  end

  describe "#sniffer" do
    it do
      res = subject.search.sniffer(ip: "1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#ctl" do
    it do
      res = subject.search.ctl(host: "vpn")
      expect(res).to be_a(Hash)
    end
  end

  describe "#onionscan" do
    it do
      res = subject.search.onionscan("app.http.keywords": "dump")
      expect(res).to be_a(Hash)
    end
  end
end
