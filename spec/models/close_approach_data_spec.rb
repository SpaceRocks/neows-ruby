require 'spec_helper'

describe Neows::Models::CloseApproachData do
  subject { described_class.new json_fixture('/close_approach_data.json') }

  it 'correctly assigns data to attributes' do
    expect(subject).to be_a Neows::Models::CloseApproachData
    expect(subject.relative_velocity).to be_a Neows::Models::RelativeVelocity
    expect(subject.miss_distance).to be_a Neows::Models::MissDistance
    expect(subject.close_approach_date).to be_a Date
    expect(subject.close_approach_date.to_s).to eq '2015-08-20'
    expect(subject.epoch_date_close_approach).to eq 1440054000000
    expect(subject.orbiting_body).to eq 'Earth'
  end
end
