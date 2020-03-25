# frozen_string_literal: true

module Onyphe
  class API
    #
    # API client initialization
    #
    # @param [String] api_key ONYPHE API key
    #
    def initialize(api_key = ENV["ONYPHE_API_KEY"])
      @api_key = api_key
      raise ArgumentError, "'api_key' argument is required" unless @api_key
    end

    def summary
      @summary ||= Clients::Summary.new(@api_key)
    end

    def simple
      @simple ||= Clients::Simple.new(@api_key)
    end

    def alert
      @alert ||= Clients::Alert.new(@api_key)
    end

    def search(oql)
      _search.search(oql)
    end

    private

    def _search
      @_search ||= Clients::Search.new(@api_key)
    end
  end
end
