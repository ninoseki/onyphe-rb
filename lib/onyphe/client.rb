# frozen_string_literal: true

require "json"
require "net/https"
require "uri"

module Onyphe
  class Client
    HOST = "www.onyphe.io"
    URL = "https://#{HOST}/api"

    def initialize(api_key)
      @api_key = api_key
    end

    private

    def url_for(path)
      URI(URL + path)
    end

    def https_options
      if proxy = ENV["HTTPS_PROXY"] || ENV["https_proxy"]
        uri = URI(proxy)
        {
          proxy_address: uri.hostname,
          proxy_port: uri.port,
          proxy_from_env: false,
          use_ssl: true
        }
      else
        { use_ssl: true }
      end
    end

    def request(req)
      Net::HTTP.start(HOST, 443, https_options) do |http|
        http_response = http.request(req)
        if http_response.code == '200'
          yield JSON.parse(http_response.body, object_class: Response)
        else
          raise(Error, "unsupported response code returned: #{http_response.code}")
        end
      end
    end

    def get(path, params = {}, &block)
      url = url_for(path)
      params["apikey"] = @api_key
      url.query = URI.encode_www_form(params)

      get = Net::HTTP::Get.new(url)
      request(get, &block)
    end
  end
end
