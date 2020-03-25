# frozen_string_literal: true

module Onyphe
  module Clients
    class Alert < Client
      def list
        get("/alert/list") { |json| json }
      end

      def add(name:, query:, email:)
        params = {
          name: name,
          query: query,
          email: email
        }
        post("/alert/add", params) { |json| json }
      end

      def delete(id)
        post("/alert/del/#{id}") { |json| json }
      end
    end
  end
end
