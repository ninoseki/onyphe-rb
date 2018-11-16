# frozen_string_literal: true

module Onyphe
  module Clients
    class IP < Client
      def get_by_ip(ip)
        get("/ip/#{ip}") { |json| json }
      end
    end
  end
end
