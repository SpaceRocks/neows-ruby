require 'neows/attributes'
require 'neows/models/base_model'

module Neows
  module Models
    class MissDistance < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Float]
      attribute :astronomical, Float

      # @!attribute [rw]
      # @return [Float]
      attribute :lunar, Float

      # @!attribute [rw]
      # @todo Switch from using SanitizedInteger to Integer after API removes commas
      # @return [Integer]
      attribute :kilometers, Neows::Attributes::SanitizedInteger

      # @!attribute [rw]
      # @todo Switch from using SanitizedInteger to Integer after API removes commas
      # @return [Integer]
      attribute :miles, Neows::Attributes::SanitizedInteger
    end
  end
end
