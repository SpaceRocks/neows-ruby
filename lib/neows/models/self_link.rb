require 'neows/models/base_model'

module Neows
  module Models
    class SelfLink < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [String]
      attribute :self, String
    end
  end
end
