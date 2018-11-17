# frozen_string_literal: true

require "addressable/uri"

module Onyphe
  module Clients
    class Search < Client
      def datascan(params, page = 1)
        search("datascan", params, page)
      end

      def synscan(params, page = 1)
        search("synscan", params, page)
      end

      def inetnum(params, page = 1)
        search("inetnum", params, page)
      end

      def threatlist(params, page = 1)
        search("threatlist", params, page)
      end

      def pastries(params, page = 1)
        search("pastries", params, page)
      end

      def resolver(params, page = 1)
        search("resolver", params, page)
      end

      def sniffer(params, page = 1)
        search("sniffer", params, page)
      end

      def ctl(params, page = 1)
        search("ctl", params, page)
      end

      def onionscan(params, page = 1)
        search("onionscan", params, page)
      end

      private

      def search(type, params, page)
        get("/search/#{type}/#{params_to_uri_string(params)}", page: page) { |json| json }
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
