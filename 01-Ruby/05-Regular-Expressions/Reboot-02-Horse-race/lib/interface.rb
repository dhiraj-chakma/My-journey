# TODO: you can build your horse race program here!
# store the horses in an Array
horses = %w(mamun abu bakkar ankur saiful)
# print the list of horses
puts "here are the list of horses: #{horses.join(",")}"

continue = "yes"

# add a balance, the user starts with 100 and wins 50 if he gets the right horse and loses 10 if he misses
user_balance = 100
while continue == "yes"

  # ask the user for a bet
  puts "please chose one horse for a bet"
  bet = gets.chomp.downcase
  return puts "wrong choice" if horses.include?(bet) != true

  # run the race (pick one element randomly from the array)
  winner_horse = horses.sample
  # check if the user bet/guess is the winning horse
  # if true, congrats to the user
  if winner_horse == bet
    user_balance += 50
    puts "congrats you have won €50. updated balance #{user_balance}"
  else
  # if not, write a message to the user
  user_balance -= 10
  puts "winner is #{winner_horse}! sorry you have lost €10. updated balance #{user_balance}"
  end
  # STEP 2:
  # after the race is completed, ask the user to play again
  puts "would you like to play again(yes/no)"
  continue = gets.chomp.downcase
  return puts "please recharge the balance" if user_balance<10

end

puts "thanks for playing see you again"
# STEP 3:
# display in the congrats message and in the other message the updated balance of the user
