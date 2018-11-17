# frozen_string_literal: true

module Onyphe
  module Clients
    class Ctl < Client
      def get_by_domain(domain, page = 1)
        raise ArgumentError, "Invalid domain: #{domain}" unless Validator.valid_domain?(domain)

        get("/ctl/#{domain}", page: page) { |json| json }
      end
    end
  end
end
