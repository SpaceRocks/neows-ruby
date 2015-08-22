require 'spec_helper'

describe Neows::Models::LinkNavigation do
  class TestModel < Neows::Models::BaseModel
    include Virtus.model
    include Neows::Models::LinkNavigation
  end

  subject { TestModel.new json_fixture('link_navigation.json').merge(client: Neows::REST::Client.new) }

  it 'correctly assigns data to attributes' do
    expect(subject.links).to be_a Neows::Models::Links
  end

  describe '#next' do
    before do
      stub_get('/feed')
        .with(query: {start_date: '2015-04-06', end_date: '2015-04-13'}).to_return(body: '{}')
    end

    it 'gets the next result set' do
      subject.next
      expect(a_get('/feed?start_date=2015-04-06&end_date=2015-04-13')).to have_been_made
    end
  end

  describe '#prev' do
    before do
      stub_get('/feed')
        .with(query: {end_date: '2015-04-01', start_date: '2015-03-25'}).to_return(body: '{}')
    end

    it 'gets the next result set' do
      subject.prev
      expect(a_get('/feed?end_date=2015-04-01&start_date=2015-03-25')).to have_been_made
    end
  end
end
