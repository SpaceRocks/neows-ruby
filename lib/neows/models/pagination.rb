require 'virtus'

module Neows
  module Models
    module Pagination
      include Virtus.model

      # @!attribute [rw]
      # @return [Neows::Models::Page]
      attribute :page, Page
    end
  end
end
