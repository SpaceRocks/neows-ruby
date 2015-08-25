require 'spec_helper'

describe Neows::Models::NearEarthObject do
  subject { described_class.new json_fixture('/near_earth_object.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.links.self).to eq 'http://www.neowsapp.com/rest/v1/neo/3724245'
    expect(subject.is_potentially_hazardous_asteroid).to eq false
    expect(subject.neo_reference_id).to eq 3724245
    expect(subject.name).to eq '(2015 OQ21)'
    expect(subject.nasa_jpl_url).to eq 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3724245'
    expect(subject.absolute_magnitude_h).to eq 27.819
    expect(subject.estimated_diameter).to be_a Neows::Models::EstimatedDiameter
    expect(subject.close_approach_data).to be_a Array
    expect(subject.close_approach_data.size).to eq 2
    expect(subject.close_approach_data.first).to be_a Neows::Models::CloseApproachData
    expect(subject.orbital_data).to be_a Neows::Models::OrbitalData
  end
end
