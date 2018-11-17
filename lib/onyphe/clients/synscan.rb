# frozen_string_literal: true

module Onyphe
  module Clients
    class Synscan < Client
      def get_by_ip(ip, page = 1)
        get("/synscan/#{ip}", page: page) { |json| json }
      end
    end
  end
end
