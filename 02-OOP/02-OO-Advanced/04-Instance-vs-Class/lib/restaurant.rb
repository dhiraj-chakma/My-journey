require 'pry-byebug'
class Restaurant
  # TODO: add relevant accessors if necessary
  attr_accessor :city, :name, :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @rating = []
    @average_rating = 0
    @restaurant_list = {}
    @restaurant_list[city] = name
  end

  # TODO: implement .filter_by_city and #rate methods
  # return the average of the rating by custormers
  def rate(new_rate)
    @rating << new_rate
    @average_rating = @rating.sum.to_f / @rating.length
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end
end

# jules_verne = Restaurant.new("paris", "Jules Verne")
# bluebird = Restaurant.new("london", "Bluebird")
# daniel = Restaurant.new("new york", "Daniel")
# restaurants = [jules_verne, bluebird, daniel]
# p Restaurant.filter_by_city(restaurants, "london")
# # Restaurant.filter_by_city
