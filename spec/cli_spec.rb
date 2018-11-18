# frozen_string_literal: true

require "json"

RSpec.describe Onyphe::CLI, :vcr do
  subject { Onyphe::CLI }

  describe "#ctl" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(ctl wokcpride.org)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#datascan" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(datascan 1.1.1.1)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#forward" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(forward 2.22.52.73)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#geoloc" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(geoloc 1.1.1.1)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#inetnum" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(inetnum 1.1.1.1)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#ip" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(ip 1.1.1.1)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#md5" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(md5 7a1f20cae067b75a52bc024b83ee4667)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#onionscan" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(onionscan mh7mkfvezts5j6yu.onion)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#pastries" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(pastries 1.1.1.1)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#reverse" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(reverse 1.1.1.1)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#sniffer" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(sniffer 217.138.28.194)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#synscan" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(synscan 1.1.1.1)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  describe "#threatlist" do
    it "should return a response" do
      res = capture(:stdout) { subject.start(%w(threatlist 206.81.18.195)) }
      json = JSON.parse(res)
      expect(json).to be_a(Hash)
    end
  end

  context "when ONYPHE_API key is not set" do
    before do
      allow(ENV).to receive(:[]).with('ONYPHE_API_KEY').and_return(nil)
    end

    it "should output an error message" do
      res = capture(:stdout) { subject.start(%w(threatlist 206.81.18.195)) }
      expect(res.chomp).to eq("Please set your API key as an environment variable `ONYPHE_API_KEY`")
    end
  end
end
