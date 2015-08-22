require 'neows/rest/stats'
require 'neows/rest/feed'
require 'neows/rest/neo'

module Neows
  module REST
    module API
      include Neows::REST::Stats
      include Neows::REST::Feed
      include Neows::REST::Neo
    end
  end
end
