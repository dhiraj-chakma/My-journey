class Restaurant
  def initialize(origin, kitchen, spicy)
    @origin = origin
    @kitchen = kitchen
    @spicy = spicy
  end

  # define some behaviour with instance method
  def cook(food)
    "here is the #{food} for you"
  end
end
  