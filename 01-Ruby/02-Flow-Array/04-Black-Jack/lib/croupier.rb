require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  outcome =""

  if player_score == 21
    outcome = "Black jack"
  elsif player_score > 21
    outcome = "Lose"
  elsif player_score > bank_score
    outcome = "Win"
  elsif player_score == bank_score
    outcome = "Push"
  else
    outcome = "Lose"
  end

  return outcome
end
