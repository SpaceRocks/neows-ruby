require 'neows/models/near_earth_object'
require 'neows/models/browse'
require 'neows/rest/utils'

module Neows
  module REST
    module Neo
      include Neows::REST::Utils

      # A single Near Earth Object by id
      #
      # @param neo_reference_id [String|Integer]
      # @return [Neows::Models::NearEarthObject]
      def neo(neo_reference_id)
        perform_get("/neo/#{neo_reference_id}", Neows::Models::NearEarthObject)
      end

      # Find other Near Earth Objects
      #
      # @return [Neows::Models::Browse]
      def browse
        perform_get('/neo/browse', Neows::Models::Browse)
      end
    end
  end
end
