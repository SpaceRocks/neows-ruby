require 'virtus'
require 'neows/models/base_model'
require 'neows/models/link'

module Neows
  module Models
    class Links < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Neows::Models::Link]
      attribute :self, Neows::Models::Link

      # @!attribute [rw]
      # @return [Neows::Models::Link]
      attribute :next, Neows::Models::Link

      # @!attribute [rw]
      # @return [Neows::Models::Link]
      attribute :prev, Neows::Models::Link
    end
  end
end
