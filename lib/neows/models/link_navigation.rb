require 'virtus'
require 'neows/models/base_model'
require 'neows/models/links'
require 'neows/rest/utils'

module Neows
  module Models
    module LinkNavigation
      include Virtus.model
      include Neows::REST::Utils

      # @!attribute [rw] links
      # @return [Neows::Models::Links]
      attribute :_links, Neows::Models::Links
      alias_method :links, :_links

      # Request the objects next results
      #
      # @return [self]
      def next
        perform_get(links.next.href, self.class)
      end

      # Request the objects previous results
      #
      # @return [self]
      def prev
        perform_get(links.prev.href, self.class)
      end
    end
  end
end
