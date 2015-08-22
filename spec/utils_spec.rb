require 'spec_helper'

describe Neows::Utils do
  describe '#classify_list!' do
    class UtilsTest; include Neows::Utils; end
    class ListItem; def initialize(_); end; end

    let(:utils) { UtilsTest.new }
    let(:list) { utils.classify_list!([1, 2, 3], ListItem) }

    it 'instantiates given class for each item' do
      expect(list.size).to eq 3
      expect(list[0]).to be_a ListItem
      expect(list[1]).to be_a ListItem
      expect(list[2]).to be_a ListItem
    end
  end
end
