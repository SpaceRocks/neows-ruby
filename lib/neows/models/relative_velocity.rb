require 'neows/attributes'
require 'neows/models/base_model'

module Neows
  module Models
    class RelativeVelocity < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Float]
      attribute :kms, Float

      # @!attribute [rw]
      # @todo Switch from using SanitizedFloat to Float after API removes commas
      # @return [Float]
      attribute :kph, Neows::Attributes::SanitizedFloat

      # @!attribute [rw]
      # @todo Switch from using SanitizedFloat to Float after API removes commas
      # @return [Float]
      attribute :mph, Neows::Attributes::SanitizedFloat
    end
  end
end
