require 'neows/models/base_model'
require 'neows/models/close_approach_data'
require 'neows/models/estimated_diameter'
require 'neows/models/orbital_data'
require 'neows/models/self_link'

module Neows
  module Models
    class NearEarthObject < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Boolean]
      attribute :is_potentially_hazardous_asteroid, Boolean

      # @!attribute [rw]
      # @return [Integer]
      attribute :neo_reference_id, Integer

      # @!attribute [rw]
      # @return [String]
      attribute :name, String

      # @!attribute [rw]
      # @return [String]
      attribute :nasa_jpl_url, String

      # @!attribute [rw]
      # @return [Float]
      attribute :absolute_magnitude_h, Float

      # @!attribute [rw]
      # @return [Neows::Models::EstimatedDiameter]
      attribute :estimated_diameter, Neows::Models::EstimatedDiameter

      # @!attribute [rw]
      # @return [Neows::Models::CloseApproachData]
      attribute :close_approach_data, Array[Neows::Models::CloseApproachData]

      # @!attribute [rw]
      # @return [Neows::Models::OrbitalData]
      attribute :orbital_data, Neows::Models::OrbitalData

      # @!attribute [rw]
      # @return [Neows::Models::SelfLink]
      attribute :links, Neows::Models::SelfLink
    end
  end
end
