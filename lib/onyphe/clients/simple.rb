# frozen_string_literal: true

module Onyphe
  module Clients
    class Simple < Client
      def geoloc(ip, page: 1)
        get("/simple/geoloc/#{ip}", page: page) { |json| json }
      end

      def inetnum(ip, page: 1)
        get("/simple/inetnum/#{ip}", page: page) { |json| json }
      end

      def pastries(ip, page: 1)
        get("/simple/pastries/#{ip}", page: page) { |json| json }
      end

      def resolver(ip, page: 1)
        get("/simple/resolver/#{ip}", page: page) { |json| json }
      end

      def sniffer(ip, page: 1)
        get("/simple/sniffer/#{ip}", page: page) { |json| json }
      end

      def synscan(ip, page: 1)
        get("/simple/synscan/#{ip}", page: page) { |json| json }
      end

      def threatlist(ip, page: 1)
        get("/simple/threatlist/#{ip}", page: page) { |json| json }
      end

      def topsite(ip, page: 1)
        get("/simple/topsite/#{ip}", page: page) { |json| json }
      end

      def vulnscan(ip, page: 1)
        get("/simple/vulnscan/#{ip}", page: page) { |json| json }
      end

      def onionshot(ip, page: 1)
        get("/simple/onionshot/#{ip}", page: page) { |json| json }
      end

      def datashot(ip, page: 1)
        get("/simple/datasnot/#{ip}", page: page) { |json| json }
      end

      def ctl(hostname, page: 1)
        get("/simple/ctl/#{hostname}", page: page) { |json| json }
      end

      def onionscan(hostname, page: 1)
        get("/simple/onionscan/#{hostname}", page: page) { |json| json }
      end

      def datascan(hostname, page: 1)
        get("/simple/datascan/#{hostname}", page: page) { |json| json }
      end

      def datamd5(md5, page: 1)
        get("/simple/datascan/datamd5/#{md5}", page: page) { |json| json }
      end
    end
  end
end
