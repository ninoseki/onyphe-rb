# frozen_string_literal: true

module Onyphe
  module Clients
    class Datascan < Client
      def get_by_query(query, page = 1)
        get("/datascan/#{query}", page: page) { |json| json }
      end
    end
  end
end
