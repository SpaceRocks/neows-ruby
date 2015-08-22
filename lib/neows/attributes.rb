module Neows
  module Attributes
    class SanitizedInteger < Virtus::Attribute
      # Coerces a string with commas to an Integer
      #
      # @param value [String]
      # @return [Integer]
      def coerce(value)
        value.delete(',').to_i
      end
    end

    class SanitizedFloat < Virtus::Attribute
      # Coerces a string with commas to a Float
      #
      # @param value [String]
      # @return [Float]
      def coerce(value)
        value.delete(',').to_f
      end
    end
  end
end
