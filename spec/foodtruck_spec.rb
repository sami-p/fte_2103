require './lib/item'
require './lib/food_truck'

RSpec.describe FoodTruck do
  describe '#initialize' do
    it 'exists' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck).to be_an_instance_of(FoodTruck)
    end

    it 'has a name' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck.name).to eq("Rocky Mountain Pies")
    end
  end

  describe '#inventory' do
    it 'starts with empty inventory hash' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck.inventory).to eq({})
    end
  end

  describe '#check_stock' do
    it 'starts with 0 items in stock' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(food_truck.check_stock(item1)).to eq(0)
    end
  end

  describe '#stock' do
    it 'stocks specified # of items and updates inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

      food_truck.stock(item1, 30)

      expect(food_truck.check_stock(item1)).to eq(30)
      expect(food_truck.inventory).to eq({item1 => 30})
    end

    it 'can stock more than one item multiple times' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      food_truck.stock(item1, 30)
      food_truck.stock(item1, 25)
      # food_truck.stock(item2, 12)

      expect(food_truck.check_stock(item1)).to eq(55)
      # expect(food_truck.inventory).to eq({item1 => 55, item2 => 12})
    end
  end
end
