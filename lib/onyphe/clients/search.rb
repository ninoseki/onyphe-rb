# frozen_string_literal: true

require "addressable/uri"

module Onyphe
  module Clients
    class Search < Client
      def search(oql, page: 1)
        path = Addressable::URI.encode(oql)
        get("/search/#{path}", page: page) { |json| json }
      end
    end
  end
end
