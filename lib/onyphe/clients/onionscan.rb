# frozen_string_literal: true

module Onyphe
  module Clients
    class Onionscan < Client
      def get_by_onion(onion)
        get("/onionscan/#{onion}") { |json| json }
      end
    end
  end
end
