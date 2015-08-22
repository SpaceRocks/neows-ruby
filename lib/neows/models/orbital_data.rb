require 'neows/models/base_model'

module Neows
  module Models
    class OrbitalData < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [String]
      attribute :orbit_id, String

      # @!attribute [rw]
      # @return [DateTime]
      attribute :orbit_determination_date, DateTime

      # @!attribute [rw]
      # @return [Integer]
      attribute :orbit_uncertainty, Integer

      # @!attribute [rw]
      # @return [Float]
      attribute :minimum_orbit_intersection, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :jupiter_tisserand_invariant, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :epoch_osculation, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :eccentricity, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :semi_major_axis, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :inclination, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :ascending_node_longitude, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :orbital_period, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :perihelion_distance, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :perihelion_argument, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :aphelion_distance, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :perihelion_time, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :mean_anomaly, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :mean_motion, Float

      # @!attribute [rw]
      # @return [String]
      attribute :equinox, String
    end
  end
end
