class Item
  attr_reader :name,
              :price

  def initialize(description)
    @name = description[:name]
    @price = description[:price]
  end
end
