# hash food items with their calorie like a chart
CALORIES_OF_FOOD = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  # a counter that will tell me the calorie that an item consists using the hash table
  sum_of_calorie = 0
  CALORIES_OF_FOOD.each do |food, calorie|
    # add to the sum if food is ordered
    sum_of_calorie += calorie if food == burger || food == side || food == beverage
  end

  return sum_of_calorie
end
