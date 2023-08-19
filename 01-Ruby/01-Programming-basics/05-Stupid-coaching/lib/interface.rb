require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "say something to the coach"
answer = gets.chomp

puts coach_answer(answer)
