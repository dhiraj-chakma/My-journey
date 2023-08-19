DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

# make a hash that lists combinations of foods in an array without pre computing the calories
COMBO = {
  "Cheesy Combo" => ["Cheese Burger", "Sweet Potatoes", "Lemonade"],
  "Veggie Combo" => ["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan Combo" => ["Vegan Burger", "Salad", "Lemonade"]
}

test = DISHES_CALORIES.map {|menu_food,food_combination| food_combination }.sum
p test
def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  total_sum = 0

  # itereate over each element of array
  orders.each do |food|
    # check the argument and if element is in hash then count the calories using function
    if COMBO.key?(food)
      store_value = poor_calories_counter(COMBO[food][0], COMBO[food][1], COMBO[food][2])
      total_sum += store_value
    else
      total_sum += DISHES_CALORIES[food]
    end
  end
  # rest of the elements should be passed in as normal and count the calories
  # r eturn the total calorie
  #total_sum
end
