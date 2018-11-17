# frozen_string_literal: true

module Onyphe
  module Clients
    class Inetnum < Client
      def get_by_ip(ip, page = 1)
        get("/inetnum/#{ip}", page: page) { |json| json }
      end
    end
  end
end
