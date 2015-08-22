require 'spec_helper'

describe Neows::Models::EstimatedDiameter do
  subject { described_class.new json_fixture('/estimated_diameter.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.kilometers).to be_a Neows::Models::EstimatedDiameterMinMax
    expect(subject.meters).to be_a Neows::Models::EstimatedDiameterMinMax
    expect(subject.miles).to be_a Neows::Models::EstimatedDiameterMinMax
    expect(subject.feet).to be_a Neows::Models::EstimatedDiameterMinMax
  end
end
