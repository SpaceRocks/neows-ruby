require 'neows/models/base_model'

module Neows
  module Models
    class EstimatedDiameterMinMax < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Float]
      attribute :estimated_diameter_min, Float

      # @!attribute [rw]
      # @return [Integer]
      attribute :estimated_diameter_max, Float
    end
  end
end
