# frozen_string_literal: true

RSpec.describe Onyphe::API, :vcr do
  subject { Onyphe::API.new }

  describe "#ctl" do
    it "should return a response" do
      res = subject.ctl("github.com")
      expect(res.error).to eq(0)
    end
  end

  describe "#datascan" do
    it "should return a response" do
      res = subject.datascan("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#geoloc" do
    it "should return a response" do
      res = subject.geoloc("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#inetnum" do
    it "should return a response" do
      res = subject.inetnum("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#ip" do
    it "should return a response" do
      res = subject.ip("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#md5" do
    it "should return a response" do
      res = subject.md5("44d88612fea8a8f36de82e1278abb02f")
      expect(res.error).to eq(0)
    end
  end

  describe "#onionscan" do
    it "should return a response" do
      res = subject.onionscan("3fyb44wdhnd2ghhl.onion")
      expect(res.error).to eq(0)
    end
  end

  describe "#pastries" do
    it "should return a response" do
      res = subject.pastries("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#reverse" do
    it "should return a response" do
      res = subject.reverse("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#sniffer" do
    it "should return a response" do
      res = subject.sniffer("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#synscan" do
    it "should return a response" do
      res = subject.synscan("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#threatlist" do
    it "should return a response" do
      res = subject.threatlist("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end
end
