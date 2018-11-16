# frozen_string_literal: true

module Onyphe
  module Clients
    class MD5 < Client
      def get_by_md5(md5)
        get("/md5/#{md5}") { |json| json }
      end
    end
  end
end
