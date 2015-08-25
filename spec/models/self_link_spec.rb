require 'spec_helper'

describe Neows::Models::SelfLink do
  subject { described_class.new json_fixture('self_link.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.self).to eq 'http://www.neowsapp.com/rest/v1/neo/3717067'
  end
end
