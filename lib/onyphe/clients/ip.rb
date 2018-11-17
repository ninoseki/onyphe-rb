# frozen_string_literal: true

module Onyphe
  module Clients
    class IP < Client
      def get_by_ip(ip, page = 1)
        get("/ip/#{ip}", page: page) { |json| json }
      end
    end
  end
end
