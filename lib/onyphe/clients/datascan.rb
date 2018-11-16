# frozen_string_literal: true

module Onyphe
  module Clients
    class Datascan < Client
      def get_by_query(q)
        get("/datascan/#{q}") { |json| json }
      end
    end
  end
end
