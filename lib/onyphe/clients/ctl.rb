# frozen_string_literal: true

module Onyphe
  module Clients
    class Ctl < Client
      def get_by_domain(domain)
        get("/ctl/#{domain}") { |json| json }
      end
    end
  end
end
