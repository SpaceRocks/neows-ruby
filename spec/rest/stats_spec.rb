require 'spec_helper'

describe Neows::REST::Stats do
  let(:client) { Neows::REST::Client.new }

  describe '#stat' do
    let(:stats) { client.stats }

    before do
      stub_get('/stats').to_return(body: fixture('stat.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    it 'returns stats' do
      expect(client.stats).to be_a Neows::Models::Stat
      expect(client.stats.near_earth_object_count).to be 12838
      expect(client.stats.close_approach_count).to be 363081
    end
  end
end
