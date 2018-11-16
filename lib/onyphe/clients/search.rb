# frozen_string_literal: true

require "addressable/uri"

module Onyphe
  module Clients
    class Search < Client
      def datascan(params)
        search("datascan", params)
      end

      def synscan(params)
        search("synscan", params)
      end

      def inetnum(params)
        search("inetnum", params)
      end

      def threatlist(params)
        search("threatlist", params)
      end

      def pastries(params)
        search("pastries", params)
      end

      def resolver(params)
        search("resolver", params)
      end

      def sniffer(params)
        search("sniffer", params)
      end

      def ctl(params)
        search("ctl", params)
      end

      def onionscan(params)
        search("onionscan", params)
      end

      private

      def search(type, params)
        get("/search/#{type}/#{params_to_uri_string(params)}") { |json| json }
      end

      def params_to_uri_string(params)
        s = params.map do |k, v|
          v = "\"#{v}\"" if v.to_s.include? " "
          [k, v].join(":")
        end.join(" ")

        Addressable::URI.encode s
      end
    end
  end
end
