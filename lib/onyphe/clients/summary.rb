# frozen_string_literal: true

module Onyphe
  module Clients
    class Summary < Client
      def ip(ip)
        get("/summary/ip/#{ip}") { |json| json }
      end

      def domain(domain)
        get("/summary/domain/#{domain}") { |json| json }
      end

      def hostname(hostname)
        get("/summary/hostname/#{hostname}") { |json| json }
      end
    end
  end
end
