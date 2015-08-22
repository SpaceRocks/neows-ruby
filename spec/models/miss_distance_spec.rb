require 'spec_helper'

describe Neows::Models::MissDistance do
  subject { described_class.new json_fixture('/miss_distance.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.astronomical).to eq 0.13708621675901
    expect(subject.lunar).to eq 53.327
    expect(subject.kilometers).to eq 20507806
    expect(subject.miles).to eq 12742960
  end
end
