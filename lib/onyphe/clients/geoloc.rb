# frozen_string_literal: true

module Onyphe
  module Clients
    class Geoloc < Client
      def get_by_ip(ip, page = 1)
        raise ArgumentError, "Invalid IP address: #{ip}" unless Validator.valid_ip?(ip)

        get("/geoloc/#{ip}", page: page) { |json| json }
      end
    end
  end
end
