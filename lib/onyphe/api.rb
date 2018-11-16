# frozen_string_literal: true

require "forwardable"

module Onyphe
  class API
    extend Forwardable

    attr_reader :search

    def initialize(api_key = ENV["ONYPHE_API_KEY"])
      raise(ArgumentError, "'api_key' argument is required") unless api_key

      @ctl = Clients::Ctl.new(api_key)
      @datascan = Clients::Datascan.new(api_key)
      @geoloc = Clients::Geoloc.new(api_key)
      @inetnum = Clients::Inetnum.new(api_key)
      @ip = Clients::IP.new(api_key)
      @md5 = Clients::MD5.new(api_key)
      @onionscan = Clients::Onionscan.new(api_key)
      @pastries = Clients::Pastries.new(api_key)
      @reverse = Clients::Reverse.new(api_key)
      @sniffer = Clients::Sniffer.new(api_key)
      @synscan = Clients::Synscan.new(api_key)
      @threatlist = Clients::Threatlist.new(api_key)

      @search = Clients::Search.new(api_key)
    end

    def_delegator :@ctl, :get_by_domain, :ctl
    def_delegator :@datascan, :get_by_query, :datascan
    def_delegator :@geoloc, :get_by_ip, :geoloc
    def_delegator :@inetnum, :get_by_ip, :inetnum
    def_delegator :@ip, :get_by_ip, :ip
    def_delegator :@md5, :get_by_md5, :md5
    def_delegator :@onionscan, :get_by_onion, :onionscan
    def_delegator :@pastries, :get_by_ip, :pastries
    def_delegator :@reverse, :get_by_ip, :reverse
    def_delegator :@sniffer, :get_by_ip, :sniffer
    def_delegator :@synscan, :get_by_ip, :synscan
    def_delegator :@threatlist, :get_by_ip, :threatlist
  end
end
