require 'neows/models/base_model'
require 'neows/models/close_approach_data'
require 'neows/models/estimated_diameter'
require 'neows/models/orbital_data'

module Neows
  module Models
    class NearEarthObject < Neows::Models::BaseModel
      attribute :isPotentiallyHazardousAsteroid, Boolean
      # @!attribute [rw]
      # @return [Boolean]
      alias_method :is_potentially_hazardous_asteroid, :isPotentiallyHazardousAsteroid

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
      # @return [Integer]
      attribute :absolute_magnitude_h, Integer

      # @!attribute [rw]
      # @return [Neows::Models::EstimatedDiameter]
      attribute :estimated_diameter, Neows::Models::EstimatedDiameter

      # @!attribute [rw]
      # @return [Neows::Models::CloseApproachData]
      attribute :close_approach_data, Array[Neows::Models::CloseApproachData]

      # @!attribute [rw]
      # @return [Neows::Models::OrbitalData]
      attribute :orbital_data, Neows::Models::OrbitalData
    end
  end
end
