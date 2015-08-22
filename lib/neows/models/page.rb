require 'neows/models/base_model'

module Neows
  module Models
    class Page < Neows::Models::BaseModel
      # @!attribute [rw]
      # @return [Integer]
      attribute :size, Integer

      # @!attribute [rw] total_elements
      # @return [Integer]
      attribute :totalElements, Integer
      alias_method :total_elements, :totalElements

      # @!attribute [rw] total_pages
      # @return [Integer]
      attribute :totalPages, Integer
      alias_method :total_pages, :totalPages

      # @!attribute [rw]
      # @return [Integer]
      attribute :number, Integer
    end
  end
end
