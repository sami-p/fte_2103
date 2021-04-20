class FoodTruck
  attr_reader :name,
              :inventory,
              :stock

  def initialize(name)
    @name = name
    @inventory = {}
    @stock = 0
  end

  def check_stock
    @stock
  end
end
