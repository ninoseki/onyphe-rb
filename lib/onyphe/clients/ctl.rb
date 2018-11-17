# frozen_string_literal: true

module Onyphe
  module Clients
    class Ctl < Client
      def get_by_domain(domain, page = 1)
        get("/ctl/#{domain}", page: page) { |json| json }
      end
    end
  end
end
