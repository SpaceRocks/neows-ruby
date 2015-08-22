require 'virtus'
require 'neows/utils'
require 'neows/models/base_model'
require 'neows/models/near_earth_object'
require 'neows/models/link_navigation'

module Neows
  module Models
    # Reverses the contents of a String or IO object.
    #
    # @return [Boolean] if success
    class Feed < Neows::Models::BaseModel
      include Neows::Utils
      include Neows::Models::LinkNavigation

      # @!attribute [rw]
      # @return [Integer] number of results
      attribute :element_count, Integer

      # @!attribute [rw]
      # @return [Hash[String => Array<Neows::Models::NearEarthObject>]] list of Near Earth Objects grouped by
      #  date (YYYY-MM-DD) strings
      attribute :near_earth_objects, Hash[String => Array]

      # Modifies existing list of hashes representing Near Earth Objects and coerces them each into #NearEarthObject
      #
      # @return [self]
      def coerce!
        near_earth_objects.each_with_index do |data|
          near_earth_objects[data.first] = classify_list!(data[1], Neows::Models::NearEarthObject)
        end

        self
      end
    end
  end
end
