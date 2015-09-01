require 'neows/attributes'
require 'neows/models/base_model'

module Neows
  module Models
    class RelativeVelocity < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Float]
      attribute :kilometers_per_second, Float
      alias_method :kps, :kilometers_per_second

      # @!attribute [rw]
      # @return [Float]
      attribute :kilometers_per_hour, Float
      alias_method :kph, :kilometers_per_hour

      # @!attribute [rw]
      # @return [Float]
      attribute :miles_per_hour, Float
      alias_method :mph, :miles_per_hour
    end
  end
end
