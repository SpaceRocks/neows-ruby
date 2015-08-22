require 'spec_helper'

describe Neows::Models::EstimatedDiameterMinMax do
  subject { described_class.new json_fixture('/estimated_diameter_min_max.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.estimated_diameter_min).to eq 0.007256964132794714
    expect(subject.estimated_diameter_max).to eq 0.016227065111206793
  end
end
