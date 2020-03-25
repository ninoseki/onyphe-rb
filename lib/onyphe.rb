# frozen_string_literal: true

require "onyphe/api"

require "onyphe/client"

require "onyphe/clients/alert"
require "onyphe/clients/resolver"
require "onyphe/clients/search"
require "onyphe/clients/simple"
require "onyphe/clients/summary"

require "onyphe/version"

module Onyphe
  class Error < StandardError; end
end
