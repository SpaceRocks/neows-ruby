require 'neows/attributes'
require 'neows/models/base_model'

module Neows
  module Models
    class RelativeVelocity < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Float]
      attribute :kms, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :kph, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :mph, Float
    end
  end
end
