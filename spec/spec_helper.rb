# frozen_string_literal: true

require "bundler/setup"

require 'coveralls'
Coveralls.wear!

require "net/http"
require "onyphe"
require "rspec"
require "vcr"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

require_relative "./support/helpers/io_helper"

RSpec.configure do |config|
  config.include Spec::Support::IOHelper
end

def myip
  @myip ||= Net::HTTP.get(URI("https://api.ipify.org"))
end

# just for memoize the my ip
myip

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.configure_rspec_metadata!
  config.hook_into :webmock
  config.filter_sensitive_data("<API_KEY>") { ENV["ONYPHE_API_KEY"] }
  config.filter_sensitive_data("<MY_IP>") { myip }
end
