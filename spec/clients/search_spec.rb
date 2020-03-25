# frozen_string_literal: true

RSpec.describe Onyphe::Clients::Search, :vcr do
  let(:api) { Onyphe::API.new }

  describe "#search" do
    it do
      res = api.search("category:datascan product:Nginx protocol:http os:Windows tls:true")
      expect(res).to be_a(Hash)
    end
  end
end
