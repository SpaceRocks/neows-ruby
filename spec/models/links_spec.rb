require 'spec_helper'

describe Neows::Models::Links do
  subject { described_class.new json_fixture('links.json') }

  it 'correctly assigns data to attributes' do
    expect(subject.self).to eq 'http://www.neowsapp.com/rest/v1/feed?start_date=2015-04-01&end_date=2015-04-06'
    expect(subject.next).to eq 'http://www.neowsapp.com/rest/v1/feed?start_date=2015-04-06&end_date=2015-04-13'
    expect(subject.prev).to eq 'http://www.neowsapp.com/rest/v1/feed?start_date=2015-03-25&end_date=2015-04-01'
  end
end
