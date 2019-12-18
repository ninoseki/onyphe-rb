# frozen_string_literal: true

require "forwardable"

module Onyphe
  class API
    extend Forwardable

    attr_reader :api_key

    #
    # API client initialization
    #
    # @param [String] api_key ONYPHE API key
    #
    def initialize(api_key = ENV["ONYPHE_API_KEY"])
      @api_key = api_key
      raise ArgumentError, "'api_key' argument is required" unless api_key
    end

    def search
      @search ||= Clients::Search.new(api_key)
    end

    def alert
      @alert ||= Clients::Alert.new(api_key)
    end

    private

    def _ctl
      @_ctl ||= Clients::Ctl.new(api_key)
    end

    def _datascan
      @_datascan ||= Clients::Datascan.new(api_key)
    end

    def _forward
      @_forward ||= Clients::Forward.new(api_key)
    end

    def _geoloc
      @_geoloc ||= Clients::Geoloc.new(api_key)
    end

    def _inetnum
      @_inetnum ||= Clients::Inetnum.new(api_key)
    end

    def _ip
      @_ip ||= Clients::IP.new(api_key)
    end

    def _md5
      @_md5 ||= Clients::MD5.new(api_key)
    end

    def _onionscan
      @_onionscan ||= Clients::Onionscan.new(api_key)
    end

    def _pastries
      @_pastries ||= Clients::Pastries.new(api_key)
    end

    def _reverse
      @_reverse ||= Clients::Reverse.new(api_key)
    end

    def _sniffer
      @_sniffer ||= Clients::Sniffer.new(api_key)
    end

    def _synscan
      @_synscan ||= Clients::Synscan.new(api_key)
    end

    def _threatlist
      @_threatlist ||= Clients::Threatlist.new(api_key)
    end

    def_delegator :_ctl, :get_by_domain, :ctl
    def_delegator :_datascan, :get_by_query, :datascan
    def_delegator :_forward, :get_by_ip, :forward
    def_delegator :_geoloc, :get_by_ip, :geoloc
    def_delegator :_inetnum, :get_by_ip, :inetnum
    def_delegator :_ip, :get_by_ip, :ip
    def_delegator :_md5, :get_by_md5, :md5
    def_delegator :_onionscan, :get_by_onion, :onionscan
    def_delegator :_pastries, :get_by_ip, :pastries
    def_delegator :_reverse, :get_by_ip, :reverse
    def_delegator :_sniffer, :get_by_ip, :sniffer
    def_delegator :_synscan, :get_by_ip, :synscan
    def_delegator :_threatlist, :get_by_ip, :threatlist
  end
end
