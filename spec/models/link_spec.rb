require 'spec_helper'

describe Neows::Models::Link do
  subject { described_class.new json_fixture('link.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.href).to eq 'http://www.neowsapp.com/rest/v1/neo/3717067'
  end
end
