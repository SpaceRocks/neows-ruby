require 'spec_helper'

describe Neows::Models::Browse do
  subject { described_class.new(json_fixture('browse.json')) }

  it 'correctly assigns data to attributes' do
    expect(subject).to be_a Neows::Models::Browse
    expect(subject.page).to be_a Neows::Models::Page
    expect(subject.links).to be_a Neows::Models::Links
  end

  describe '#near_earth_objects' do
    before do
      expect(subject._embedded.nearEarthObjectFeedDtoes).to be_a Array
      expect(subject._embedded.nearEarthObjectFeedDtoes.length).to be 2
    end

    it 'returns self._embedded.near_earth_objects' do
      expect(subject.near_earth_objects).to be_a Array
      expect(subject.near_earth_objects.length).to be 2
      expect(subject.near_earth_objects).to eq subject._embedded.nearEarthObjectFeedDtoes
    end
  end
end
