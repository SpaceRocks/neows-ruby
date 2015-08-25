require 'virtus'
require 'neows/models/base_model'
require 'neows/models/self_link'

module Neows
  module Models
    class Links < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [String]
      attribute :self, String

      # @!attribute [rw]
      # @return [String]
      attribute :next, String

      # @!attribute [rw]
      # @return [String]
      attribute :prev, String
    end
  end
end
