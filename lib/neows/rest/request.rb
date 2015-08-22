require 'http'

module Neows
  module REST
    class Request
      attr_accessor :client, :path, :options

      # Creates an instance of Request
      #
      # @param request_method [Symbol] :get
      # @param path [String]
      # @param klass [Class]
      # @param options [Hash]
      # @return [Neows::REST::Request]
      def initialize(client, request_method, path, klass, options = {})
        @client = client
        @request_method = request_method
        @path = path.gsub @client.base_url, ''
        @options = options
        @klass = klass
      end

      # @return [String]
      def uri
        @client.base_url + @path
      end

      # Makes the request passing the response into the given class. If a class provides a coerce! method,
      # it will be called to handle custom coercion of data.
      #
      # @return [Class] instance of Klass
      def perform
        response = HTTP.with(request_headers).public_send(@request_method, uri, params: @options)
        klass = @klass.new JSON.parse(response.to_s).merge(client: @client)
        klass.coerce! if klass.respond_to?(:coerce!)
        klass
      end

    private

      def request_headers
        {
          user_agent: @client.user_agent,
          accept: 'application/json'
        }
      end
    end
  end
end
