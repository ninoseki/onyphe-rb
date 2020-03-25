# frozen_string_literal: true

module Onyphe
  module Clients
    class Resolver < Client
      def forward(ip, page: 1)
        get("/simple/resolver/forward/#{ip}", page: page) { |json| json }
      end

      def reverse(ip, page: 1)
        get("/simple/resolver/reverse/#{ip}", page: page) { |json| json }
      end
    end
  end
end
