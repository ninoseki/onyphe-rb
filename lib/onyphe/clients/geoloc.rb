# frozen_string_literal: true

module Onyphe
  module Clients
    class Geoloc < Client
      def get_by_ip(ip)
        get("/geoloc/#{ip}") { |json| json }
      end
    end
  end
end
