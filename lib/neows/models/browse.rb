require 'virtus'
require 'neows/models/base_model'
require 'neows/models/links'
require 'neows/models/page'
require 'neows/models/pagination'
require 'neows/models/near_earth_object'

module Neows
  module Models
    # @todo remove wrapper when _embedded is removed from api
    class EmbeddedResults < Neows::Models::BaseModel
      attribute :nearEarthObjectFeedDtoes, Array[Neows::Models::NearEarthObject]
    end

    class Browse < Neows::Models::BaseModel
      include Neows::Models::LinkNavigation
      include Neows::Models::Pagination

      # @!attribute [rw]
      # @note Temporary wrapper around the result set. Use #near_earth_objects
      # @return [EmbeddedResults]
      attribute :_embedded, EmbeddedResults

      # Helper accessor for #_embedded.near_earth_objects
      #
      # @return [Array<Neows::Models::NearEarthObject>] list of Near Earth Objects
      def near_earth_objects
        _embedded.nearEarthObjectFeedDtoes
      end
    end
  end
end
