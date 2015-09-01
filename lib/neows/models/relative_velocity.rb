require 'neows/attributes'
require 'neows/models/base_model'

module Neows
  module Models
    class RelativeVelocity < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Float]
      attribute :kilometers_per_second, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :kilometers_per_hour, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :miles_per_hour, Float
    end
  end
end
