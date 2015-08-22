require 'neows/models/base_model'

module Neows
  module Models
    class Link < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [String]
      attribute :href, String
    end
  end
end
