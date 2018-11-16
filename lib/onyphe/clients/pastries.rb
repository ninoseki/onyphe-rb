# frozen_string_literal: true

module Onyphe
  module Clients
    class Pastries < Client
      def get_by_ip(ip)
        get("/pastries/#{ip}") { |json| json }
      end
    end
  end
end
