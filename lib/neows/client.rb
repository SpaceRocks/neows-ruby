require 'neows/version'

module Neows
  class Client
    attr_accessor :base_url

    # Initializes a new Client object
    #
    # @param options [Hash]
    # @return [Neows::Client]
    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
    end

    def base_url
      @base_url ||= url
    end

    # @return [String]
    def user_agent
      "NeowsRubyGem/#{Neows::VERSION}"
    end
  end
end
