# frozen_string_literal: true

module Onyphe
  module Clients
    class Threatlist < Client
      def get_by_ip(ip)
        get("/threatlist/#{ip}") { |json| json }
      end
    end
  end
end
