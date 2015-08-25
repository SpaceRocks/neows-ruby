require 'spec_helper'

describe Neows::Models::Browse do
  subject { described_class.new(json_fixture('browse.json')) }

  it 'correctly assigns data to attributes' do
    expect(subject).to be_a Neows::Models::Browse
    expect(subject.near_earth_objects).to be_a Array
    expect(subject.near_earth_objects.first).to be_a Neows::Models::NearEarthObject
    expect(subject.page).to be_a Neows::Models::Page
    expect(subject.links).to be_a Neows::Models::Links
  end
end
