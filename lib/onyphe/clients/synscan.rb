# frozen_string_literal: true

module Onyphe
  module Clients
    class Synscan < Client
      def get_by_ip(ip)
        get("/synscan/#{ip}") { |json| json }
      end
    end
  end
end
