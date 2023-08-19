require_relative "restaurant"

chinese_restaurant = Restaurant.new("chinese", "east asian", true)
puts chinese_restaurant.cook("chinese noodles")
