# frozen_string_literal: true

RSpec.describe Onyphe::API, :vcr do
  subject { described_class.new }

  describe "#ctl" do
    it do
      res = subject.ctl("okcpride.org")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.ctl("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#datascan" do
    it do
      res = subject.datascan("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#forward" do
    it do
      res = subject.forward("2.22.52.73")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.forward("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#geoloc" do
    it do
      res = subject.geoloc("1.1.1.1")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.geoloc("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#inetnum" do
    it do
      res = subject.inetnum("1.1.1.1")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.inetnum("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#ip" do
    it do
      res = subject.ip("1.1.1.1")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.ip("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#md5" do
    it do
      res = subject.md5("7a1f20cae067b75a52bc024b83ee4667")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.md5("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#onionscan" do
    it do
      res = subject.onionscan("mh7mkfvezts5j6yu.onion")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.onionscan("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#pastries" do
    it do
      res = subject.pastries("1.1.1.1")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.pastries("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#reverse" do
    it do
      res = subject.reverse("1.1.1.1")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.reverse("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#sniffer" do
    it do
      res = subject.sniffer("217.138.28.194")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.sniffer("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#synscan" do
    it do
      res = subject.synscan("1.1.1.1")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.synscan("test") }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#threatlist" do
    it do
      res = subject.threatlist("206.81.18.195")
      expect(res).to be_a(Hash)
    end

    context "when given an invalid value" do
      it do
        expect { subject.sniffer("test") }.to raise_error(ArgumentError)
      end
    end
  end
end
