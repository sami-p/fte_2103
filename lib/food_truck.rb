class FoodTruck
  attr_reader :name,
              :inventory,
              :num_stock

  def initialize(name)
    @name = name
    @inventory = {}
    @num_stock = 0
  end

  def check_stock(item)
    @num_stock
  end

  def stock(item, amount)
    @num_stock += amount
    @inventory[item] = num_stock
  end
end
