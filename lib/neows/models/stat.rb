require 'neows/models/base_model'

module Neows
  module Models
    class Stat < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Integer]
      attribute :near_earth_object_count, Integer

      # @!attribute [rw]
      # @return [Integer]
      attribute :close_approach_count, Integer
    end
  end
end
