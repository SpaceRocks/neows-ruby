require 'virtus'
require 'neows/models/base_model'
require 'neows/models/miss_distance'
require 'neows/models/relative_velocity'

module Neows
  module Models
    class CloseApproachData < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Neows::Models::RelativeVelocity]
      attribute :relative_velocity, Neows::Models::RelativeVelocity

      # @!attribute [rw]
      # @return [Neows::Models::MissDistance]
      attribute :miss_distance, Neows::Models::MissDistance

      # @!attribute [rw]
      # @return [Date]
      attribute :close_approach_date, Date

      # @!attribute [rw]
      # @return [Integer]
      attribute :epoch_date_close_approach, Integer

      # @!attribute [rw]
      # @return [String]
      attribute :orbiting_body, String
    end
  end
end
