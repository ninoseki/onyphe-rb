# frozen_string_literal: true

require "json"
require "thor"

module Onyphe
  class CLI < Thor
    desc "ctl DOMAIN", "It will return information for the given domain name X509 certificate information from CTLs with history of changes"
    def ctl(domain)
      with_error_handling { puts api.ctl(domain).to_h.to_json }
    end

    desc "datascan IP/STRING", "It will return datascan information for the given IPv{4,6} address or string with history of changes"
    def datascan(query)
      with_error_handling { puts api.datascan(query).to_h.to_json }
    end

    desc "forward IP", "It will return forward DNS lookup information for the given IPv{4,6} address with history of changes"
    def forward(ip)
      with_error_handling { puts api.forward(ip).to_h.to_json }
    end

    desc "geoloc IP", "It will return geolocation information for the given IPv{4,6} address"
    def geoloc(ip)
      with_error_handling { puts api.geoloc(ip).to_h.to_json }
    end

    desc "inetnum IP", "It will return inetnum information for the given IPv{4,6} address with history of changes"
    def inetnum(ip)
      with_error_handling { puts api.inetnum(ip).to_h.to_json }
    end

    desc "ip IP", "It will return a summary of all information for the given IPv{4,6} address"
    def ip(ip)
      with_error_handling { puts api.ip(ip).to_h.to_json }
    end

    desc "md5 MD5", "It will return information for the given datamd5 filter from datascan information category with history of changes"
    def md5(md5)
      with_error_handling { puts api.md5(md5).to_h.to_json }
    end

    desc "onionscan ONION", "It will return information for the given onion domain with history of changes"
    def onionscan(onion)
      with_error_handling { puts api.onionscan(onion).to_h.to_json }
    end

    desc "pastries IP", "It will return pastries information for the given IPv{4,6} address with history of changes"
    def pastries(ip)
      with_error_handling { puts api.pastries(ip).to_h.to_json }
    end

    desc "reverse IP", "It will return reverse DNS lookup information for the given IPv{4,6} address with history of changes"
    def reverse(ip)
      with_error_handling { puts api.reverse(ip).to_h.to_json }
    end

    desc "sniffer IP", "It will return information for the given IP address with history of changes"
    def sniffer(ip)
      with_error_handling { puts api.sniffer(ip).to_h.to_json }
    end

    desc "synscan IP", "It will return synscan information for the given IPv{4,6} address with history of changes."
    def synscan(ip)
      with_error_handling { puts api.synscan(ip).to_h.to_json }
    end

    desc "threattlist IP", "It will return threatlist information for the given IPv{4,6} address with history of change"
    def threatlist(ip)
      with_error_handling { puts api.threatlist(ip).to_h.to_json }
    end

    no_commands do
      def with_error_handling
        yield
      rescue StandardError => e
        puts "Warning: #{e}"
      end

      def api
        @api ||= API.new
      end
    end
  end
end
