$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'simplecov'
SimpleCov.start

require 'coveralls'
Coveralls.wear!

require 'neows'
require 'rspec'
require 'webmock/rspec'

WebMock.disable_net_connect!

def stub_get(path)
  stub_request(:get, Neows::REST::Client::BASE_URL + path)
end

def a_get(path)
  a_request(:get, Neows::REST::Client::BASE_URL + path)
end

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def json_fixture(file)
  JSON.parse(File.read(fixture_path + '/' + file))
end
