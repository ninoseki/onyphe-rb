# frozen_string_literal: true

RSpec.describe Onyphe::Clients::Alert, :vcr do
  let(:api) { Onyphe::API.new }

  describe "#list" do
    it do
      res = api.alert.list
      expect(res).to be_a(Hash)
    end
  end
end
