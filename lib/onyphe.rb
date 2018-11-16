# frozen_string_literal: true

require "onyphe/response"
require "onyphe/api"

require "onyphe/client"

require "onyphe/clients/ctl"
require "onyphe/clients/datascan"
require "onyphe/clients/forward"
require "onyphe/clients/geoloc"
require "onyphe/clients/inetnum"
require "onyphe/clients/ip"
require "onyphe/clients/md5"
require "onyphe/clients/onionscan"
require "onyphe/clients/pastries"
require "onyphe/clients/reverse"
require "onyphe/clients/sniffer"
require "onyphe/clients/synscan"
require "onyphe/clients/threatlist"
require "onyphe/clients/search"

require "onyphe/version"

module Onyphe
  class Error < StandardError; end
end
