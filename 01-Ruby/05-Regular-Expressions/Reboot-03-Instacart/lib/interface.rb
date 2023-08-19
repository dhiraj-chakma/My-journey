# TODO: you can build your instacart program here!

# store: HASH
store ={ "kiwi" => 1.25, "banana" => 0.5, "mango" => 4, "asparagus" => 9}
# orders: ARRAY
orders = {"kiwi" => 0, "banana" => 0, "mango" => 0, "asparagus" => 0}
# store available fruits
availability = {"kiwi" => 5, "banana" => 4, "mango" => 1, "asparagus" => 5}

# display the list exaclty like in kitt
puts "--------------------"
puts "Welcome to Instacart"
puts  "--------------------"
puts "In our store today:"
store.each {|item, price| puts "#{item}: #{price}€" }
puts  "--------------------"

checkout = "answer"
bill = 0
# ask the user for an item, store it in orders until the user types quit
while true
  puts "Which item? (or 'quit' to checkout)"
  checkout = gets.chomp.downcase


  if checkout == "quit"
    orders.each do |item, quantity|
      if quantity !=0
        puts "#{item}: #{quantity} * #{store[item]} = #{quantity * store[item]}"
      end
    end
    return puts "total: #{bill}€"
  end


  if store.has_key?(checkout) != true
    puts "Sorry, we don't have #{checkout} today."
  else
    puts "how many"
    orders[checkout] += gets.chomp.to_i

    bill += store[checkout] * orders[checkout]
  end

end
# use each order of the array to compute the total spending

# how do i get the value for any of these keys?
# to get price of apple -> cart["apple"]
if checkout.to_i > availability[checkout]
  puts "how many"
  puts "Sorry, there are only #{availability[checkout]} kiwis left."
end
