require 'spec_helper'

describe Neows::Models::RelativeVelocity do
  subject { described_class.new json_fixture('/relative_velocity.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.kilometers_per_second).to eq 6.57260631740581
    expect(subject.kms).to eq 6.57260631740581
    expect(subject.kilometers_per_hour).to eq 23661.383
    expect(subject.kph).to eq 23661.383
    expect(subject.miles_per_hour).to eq 14702.263
    expect(subject.mph).to eq 14702.263
  end
end
