require 'neows/rest/api'
require 'neows/client'

module Neows
  module REST
    class Client < Neows::Client
      BASE_URL = 'http://www.neowsapp.com/rest/v1'
      include Neows::REST::API

      # @return [String]
      def url
        BASE_URL
      end
    end
  end
end
