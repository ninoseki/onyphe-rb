# frozen_string_literal: true

module Onyphe
  module Clients
    class Reverse < Client
      def get_by_ip(ip)
        get("/reverse/#{ip}") { |json| json }
      end
    end
  end
end
