require 'spec_helper'

describe Neows::Models::Stat do
  subject { described_class.new json_fixture('/stat.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.near_earth_object_count).to eq 12838
    expect(subject.close_approach_count).to eq 363081
  end
end
