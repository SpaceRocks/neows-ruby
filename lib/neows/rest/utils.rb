require 'neows/rest/request'

module Neows
  module REST
    module Utils
    private

      def perform_get(path, klass, options = {})
        Neows::REST::Request.new(@client || self, :get, path, klass, options).perform
      end
    end
  end
end
