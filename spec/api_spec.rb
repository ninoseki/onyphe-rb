# frozen_string_literal: true

RSpec.describe Onyphe::API, :vcr do
  subject { Onyphe::API.new }

  describe "#ctl" do
    it "should return a response" do
      res = subject.ctl("okcpride.org")
      expect(res.error).to eq(0)
    end
  end

  describe "#datascan" do
    it "should return a response" do
      res = subject.datascan("1.1.1.1")
      expect(res.error).to eq(0)
    end
  end

  describe "#forward" do
    it "should return a response" do
      res = subject.forward("2.22.52.73")
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
      res = subject.md5("7a1f20cae067b75a52bc024b83ee4667")
      expect(res.error).to eq(0)
    end
  end

  describe "#onionscan" do
    it "should return a response" do
      res = subject.onionscan("mh7mkfvezts5j6yu.onion")
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
      res = subject.sniffer("217.138.28.194")
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
      res = subject.threatlist("206.81.18.195")
      expect(res.error).to eq(0)
    end
  end
end
