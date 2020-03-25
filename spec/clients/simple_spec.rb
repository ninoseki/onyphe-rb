# frozen_string_literal: true

RSpec.describe Onyphe::Clients::Simple, :vcr do
  let(:api) { Onyphe::API.new }

  describe "#geoloc" do
    it do
      res = api.simple.geoloc("1.1.1.1")
      expect(res).to be_a(Hash)
    end

    it do
      res = api.simple.geoloc("1.1.1.1", page: 2)
      expect(res).to be_a(Hash)
    end
  end
end
