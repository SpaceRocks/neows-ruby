require 'neows/utils'
require 'neows/models/feed'
require 'neows/rest/utils'

module Neows
  module REST
    module Feed
      include Neows::REST::Utils

      # Near Earth Objects grouped by Date
      #
      # @param start_date [String] date in format YYYY-MM-DD
      # @param end_date [String] date in format YYYY-MM-DD
      # @return [Neows::Models::Feed]
      def feed(start_date, end_date)
        perform_get('/feed', Neows::Models::Feed, start_date: start_date, end_date: end_date)
      end
    end
  end
end
