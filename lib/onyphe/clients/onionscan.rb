# frozen_string_literal: true

module Onyphe
  module Clients
    class Onionscan < Client
      def get_by_onion(onion, page = 1)
        get("/onionscan/#{onion}", page: page) { |json| json }
      end
    end
  end
end
