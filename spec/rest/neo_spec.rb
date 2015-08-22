require 'spec_helper'

describe Neows::REST::Neo do
  let(:client) { Neows::REST::Client.new }

  describe '#neo' do
    subject { client.neo(1) }

    before do
      stub_get('/neo/1').to_return(body: fixture('near_earth_object.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    it 'returns near earth object' do
      expect(subject).to be_a Neows::Models::NearEarthObject
    end
  end

  describe '#browse' do
    subject { client.browse }

    before do
      stub_get('/neo/browse').to_return(body: fixture('browse.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    it 'returns browse' do
      expect(subject).to be_a Neows::Models::Browse
    end
  end
end
