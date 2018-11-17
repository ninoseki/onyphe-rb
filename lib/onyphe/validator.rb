# frozen_string_literal: true

require "ipaddr"
require "uri"

module Onyphe
  class Validator
    def self.valid_ip?(ip)
      IPAddr.new ip
      true
    rescue IPAddr::InvalidAddressError => _
      false
    end

    def self.valid_domain?(domain)
      uri = URI("https://#{domain}")
      uri.hostname == domain && domain.include?(".") && !valid_ip?(domain)
    rescue ArgumentError => _
      false
    end

    def self.valid_onion_domain?(domain)
      uri = URI("https://#{domain}")
      uri.hostname == domain && domain.end_with?(".onion")
    rescue ArgumentError => _
      false
    end

    def self.valid_md5?(md5)
      md5.to_s.match?(/^[a-f0-9]{32}$/)
    end
  end
end
