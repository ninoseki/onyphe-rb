# frozen_string_literal: true

RSpec.describe Onyphe::Client do
  subject { Onyphe::Validator }

  describe ".valid_ip?" do
    context "when given an invalid value" do
      it "should return false" do
        expect(subject.valid_ip?("test")).to eq(false)
      end
    end
    context "when given a valid value" do
      it "should return true" do
        expect(subject.valid_ip?("1.1.1.1")).to eq(true)
      end
    end
  end

  describe ".valid_domain?" do
    context "when given an invalid value" do
      it "should return false" do
        expect(subject.valid_domain?("test")).to eq(false)
        expect(subject.valid_domain?("1.1.1.1")).to eq(false)
      end
    end
    context "when given a valid value" do
      it "should return true" do
        expect(subject.valid_domain?("test.com")).to eq(true)
      end
    end
  end

  describe ".valid_onion_domain?" do
    context "when given an invalid value" do
      it "should return false" do
        expect(subject.valid_onion_domain?("test.com")).to eq(false)
      end
    end
    context "when given a valid value" do
      it "should return true" do
        expect(subject.valid_onion_domain?("test.onion")).to eq(true)
      end
    end
  end

  describe ".valid_md5?" do
    context "when given an invalid value" do
      it "should return false" do
        expect(subject.valid_md5?("7a1f20cae067b75a52bc024b83ee4667_")).to eq(false)
      end
    end
    context "when given a valid value" do
      it "should return true" do
        expect(subject.valid_md5?("7a1f20cae067b75a52bc024b83ee4667")).to eq(true)
      end
    end
  end
end
