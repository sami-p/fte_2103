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

      expect(food_truck.check_stock).to eq(0)
    end
  end
end
