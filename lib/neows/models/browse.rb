require 'virtus'
require 'neows/models/base_model'
require 'neows/models/links'
require 'neows/models/page'
require 'neows/models/pagination'
require 'neows/models/near_earth_object'

module Neows
  module Models
    class Browse < Neows::Models::BaseModel
      include Neows::Models::LinkNavigation
      include Neows::Models::Pagination

      # @!attribute [rw]
      # @return [Array<Neows::Models::NearEarthObjects]
      attribute :near_earth_objects, Array[Neows::Models::NearEarthObject]
    end
  end
end
