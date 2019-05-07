# frozen_string_literal: true

require "addressable/uri"

module Onyphe
  module Clients
    class Datascan < Client
      def get_by_query(query, page = 1)
        query = Addressable::URI.encode(query)
        get("/datascan/#{query}", page: page) { |json| json }
      end
    end
  end
end
