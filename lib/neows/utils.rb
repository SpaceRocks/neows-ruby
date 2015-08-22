module Neows
  module Utils
    # Modifies given list creating an instance of klass for each item
    #
    # @param list [Array]
    # @param klass [Class]
    # @return [list]
    def classify_list!(list, klass)
      list.map! { |h| klass.new(h) }
    end
  end
end
