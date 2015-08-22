require 'virtus'

module Neows
  module Models
    class BaseModel
      include Virtus.model

      attr_accessor :client

      def initialize(attributes = {})
        @client = attributes.delete :client
        super(attributes)
      end
    end
  end
end
