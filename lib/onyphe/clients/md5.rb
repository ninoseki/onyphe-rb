# frozen_string_literal: true

module Onyphe
  module Clients
    class MD5 < Client
      def get_by_md5(md5, page: 1)
        raise ArgumentError, "Invalid md5: #{md5}" unless Validator.valid_md5?(md5)

        get("/md5/#{md5}", page: page) { |json| json }
      end
    end
  end
end
