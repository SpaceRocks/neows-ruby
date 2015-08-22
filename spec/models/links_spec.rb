require 'spec_helper'

describe Neows::Models::Links do
  subject { described_class.new json_fixture('links.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.self).to be_a Neows::Models::Link
    expect(subject.next).to be_a Neows::Models::Link
    expect(subject.prev).to be_a Neows::Models::Link
  end
end
