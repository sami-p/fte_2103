require './lib/item'

RSpec.describe Item do
  describe '#initialize' do
    it 'exists' do
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    end
  end
end
