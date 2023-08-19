# TODO: you can build your calculator program here!

# STEP 1
# greet the user
puts "hello! welcome to my calculator app."
# is operator equal to '+'?
# perform an addition
# print the result

# STEP 2
# repeat everything but the "greet the user"
while true

puts "Enter a first number:"
first_num = gets.chomp.to_i

# ask the user for a second number
puts "Enter a second one:"

# store it into a variable
sec_num = gets.chomp.to_i

# ask for an operator [* + - /]
puts "Choose operation [+][-][*][/]"

# store it into a variable
operator = gets.chomp

puts operator.class
# do the calc
puts
# if/elsif/esle
if operator == "+"
  puts "result: #{first_num + sec_num}"
  elsif operator == "-"
    puts "result: #{first_num - sec_num}"
  elsif operator == "*"
    puts "result: #{first_num * sec_num}"
  else
    puts "result: #{first_num / sec_num}"
end
puts "Do you want to calculate again? [Y/N]"
ans = gets.chomp.downcase
  return  if ans != "y"
end

puts "good bye!"
# if the answers yes to my "do another calc question"

# STEP 3
