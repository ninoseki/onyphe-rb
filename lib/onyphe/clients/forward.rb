# frozen_string_literal: true

module Onyphe
  module Clients
    class Forward < Client
      def get_by_ip(ip)
        get("/forward/#{ip}") { |json| json }
      end
    end
  end
end
