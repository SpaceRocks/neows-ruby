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
      # @return [Integer]
      attribute :kilometers, Integer

      # @!attribute [rw]
      # @return [Integer]
      attribute :miles, Integer
    end
  end
end
