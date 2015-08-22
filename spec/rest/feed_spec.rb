require 'spec_helper'

describe Neows::REST::Feed do
  let(:client) { Neows::REST::Client.new }

  describe '#feed' do
    let(:start_date) { '2015-04-01' }
    let(:end_date) { '2015-04-06' }
    subject { client.feed start_date, end_date }

    before do
      stub_get('/feed').with(
        query: {start_date: start_date, end_date: end_date}
      ).to_return(body: fixture('feed.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    it 'correctly assigns data to attributes' do
      expect(subject).to be_a Neows::Models::Feed
      expect(subject.element_count).to be 60
      expect(subject.near_earth_objects.keys).to eq(%w(
        2015-04-06 2015-04-05 2015-04-04 2015-04-03 2015-04-02 2015-04-01
      ))
      expect(subject.near_earth_objects['2015-04-06'].first).to be_a Neows::Models::NearEarthObject
      expect(subject.links).to be_a Neows::Models::Links
    end
  end
end
