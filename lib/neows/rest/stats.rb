require 'neows/models/stat'
require 'neows/rest/utils'

module Neows
  module REST
    module Stats
      include Neows::REST::Utils

      # Stats relating to the NeoWs database
      #
      # @return [Neows::Models::Stat]
      def stats
        perform_get('/stats', Neows::Models::Stat)
      end
    end
  end
end
