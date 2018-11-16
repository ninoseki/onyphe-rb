# frozen_string_literal: true

module Onyphe
  module Clients
    class Inetnum < Client
      def get_by_ip(ip)
        get("/inetnum/#{ip}") { |json| json }
      end
    end
  end
end
