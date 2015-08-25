require 'neows/models/base_model'

module Neows
  module Models
    class Page < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Integer]
      attribute :size, Integer

      # @!attribute [rw] total_elements
      # @return [Integer]
      attribute :total_elements, Integer

      # @!attribute [rw] total_pages
      # @return [Integer]
      attribute :total_pages, Integer

      # @!attribute [rw]
      # @return [Integer]
      attribute :number, Integer
    end
  end
end
