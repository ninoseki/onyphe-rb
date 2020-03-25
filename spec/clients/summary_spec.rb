# frozen_string_literal: true

RSpec.describe Onyphe::Clients::Summary, :vcr do
  let(:api) { Onyphe::API.new }

  describe "#ip" do
    it do
      res = api.summary.ip("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end
end
