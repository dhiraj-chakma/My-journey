require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

# have answers that will break the loop if matches
answer = ["y", "yes"]

#also take answers from user
ans = "y"
score = 0
bank = pick_bank_score

while answer.include?(ans)
  puts 'Card? "y" or "yes" to get a new card'
  ans = gets.chomp
  if answer.include?(ans) || answer.include?(ans)
    score += pick_player_card
    puts state_of_the_game(score, bank)
  end
end

puts end_game_message(score, bank)
