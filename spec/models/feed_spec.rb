require 'spec_helper'

describe Neows::Models::Feed do
  subject { described_class.new json_fixture('feed.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.element_count).to eq 60
    expect(subject.near_earth_objects).to be_a Hash
    expect(subject.links).to be_a Neows::Models::Links
  end
end
