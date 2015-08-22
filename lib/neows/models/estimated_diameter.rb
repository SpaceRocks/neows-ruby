require 'virtus'
require 'neows/models/base_model'
require 'neows/models/estimated_diameter_min_max'

module Neows
  module Models
    class EstimatedDiameter < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Neows::Models::EstimatedDiameterMinMax]
      attribute :kilometers, Neows::Models::EstimatedDiameterMinMax

      # @!attribute [rw]
      # @return [Neows::Models::EstimatedDiameterMinMax]
      attribute :meters, Neows::Models::EstimatedDiameterMinMax

      # @!attribute [rw]
      # @return [Neows::Models::EstimatedDiameterMinMax]
      attribute :miles, Neows::Models::EstimatedDiameterMinMax

      # @!attribute [rw]
      # @return [Neows::Models::EstimatedDiameterMinMax]
      attribute :feet, Neows::Models::EstimatedDiameterMinMax
    end
  end
end
