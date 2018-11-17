# frozen_string_literal: true

module Onyphe
  module Clients
    class Forward < Client
      def get_by_ip(ip, page = 1)
        get("/forward/#{ip}", page: page) { |json| json }
      end
    end
  end
end
