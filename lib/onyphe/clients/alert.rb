# frozen_string_literal: true

module Onyphe
  module Clients
    class Alert < Client
      def list
        get("/v2/alert/list") { |json| json }
      end

      def add(name:, query:, email:)
        params = {
          name: name,
          query: query,
          email: email
        }
        post("/v2/alert/add", params) { |json| json }
      end

      def delete(id)
        post("/v2/alert/del/#{id}") { |json| json }
      end
    end
  end
end
