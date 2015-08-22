require 'spec_helper'

describe Neows::Client do
  describe '#base_url' do
    context 'provide base_url' do
      let(:client) { Neows::Client.new base_url: 'http://test.com' }

      it 'returns set url' do
        expect(client.base_url).to eq 'http://test.com'
      end
    end
  end

  describe '#user_agent' do
    before { stub_const('Neows::VERSION', 1) }

    it 'returns string' do
      expect(subject.user_agent).to eq('NeowsRubyGem/1')
    end
  end
end
