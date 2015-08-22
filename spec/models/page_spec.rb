require 'spec_helper'

describe Neows::Models::Page do
  subject { described_class.new json_fixture('/page.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.size).to eq 2
    expect(subject.total_elements).to eq 12838
    expect(subject.total_pages).to eq 6419
    expect(subject.number).to eq 0
  end
end
