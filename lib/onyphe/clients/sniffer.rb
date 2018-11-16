# frozen_string_literal: true

module Onyphe
  module Clients
    class Sniffer < Client
      def get_by_ip(ip)
        get("/sniffer/#{ip}") { |json| json }
      end
    end
  end
end
