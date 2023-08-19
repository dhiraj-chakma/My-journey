class Meal

  attr_accessor :id #,:name,:price
   attr_reader :name, :price
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end
