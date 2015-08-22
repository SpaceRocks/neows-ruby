require 'spec_helper'

describe Neows::Models::OrbitalData do
  subject { described_class.new json_fixture('/orbital_data.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.orbit_id).to eq '5'
    expect(subject.orbit_determination_date).to be_a DateTime
    expect(subject.orbit_determination_date.to_s).to eq '2015-07-27T06:17:35+00:00'
    expect(subject.orbit_uncertainty).to eq 5
    expect(subject.minimum_orbit_intersection).to eq 0.00201465
    expect(subject.jupiter_tisserand_invariant).to eq 7.35
    expect(subject.epoch_osculation).to eq 2457000.5
    expect(subject.eccentricity).to eq 0.3683826990903955
    expect(subject.semi_major_axis).to eq 0.7850454277210355
    expect(subject.inclination).to eq 1.327850654502157
    expect(subject.ascending_node_longitude).to eq 126.3408424592911
    expect(subject.orbital_period).to eq 254.0625247837503
    expect(subject.perihelion_distance).to eq 0.4958482741485864
    expect(subject.perihelion_argument).to eq 328.9968684625534
    expect(subject.aphelion_distance).to eq 1.074242581293485
    expect(subject.mean_anomaly).to eq 267.1829851185241
    expect(subject.mean_motion).to eq 1.416974031516141
    expect(subject.equinox).to eq 'J2000'
  end
end
