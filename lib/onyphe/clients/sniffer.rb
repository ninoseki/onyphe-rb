# frozen_string_literal: true

module Onyphe
  module Clients
    class Sniffer < Client
      def get_by_ip(ip, page = 1)
        get("/sniffer/#{ip}", page: page) { |json| json }
      end
    end
  end
end
