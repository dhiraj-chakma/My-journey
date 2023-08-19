def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  # returns false if provided with something other than a number
  return false if number.class != Integer
  return false if number == 10

  # take a number as argument and take the three numbers as first, sec and third variables according to their index
  first = number.digits[2]
  sec = number.digits[1]
  third = number.digits[0]

  # return true if number is just one digit
  if number.digits.length == 1
    return true

  # if two digit number are given then if they dont match each other return true
  elsif number.digits.length == 2
    return number.digits[0] != number.digits[1]

    # check all the subsets of this three numbers are different
    # subset of 236 for example are (2, 3, 6, 2x3, 3x6, 2x3x6)
  elsif first == sec || sec == third || first == third || first == first * sec || first == sec * third || first == first * sec * third || sec == first * sec || sec == sec * third || sec == first * sec * third || third == first * sec || third == sec * third || third == first * sec * third
    return false
  end

  return true
end

puts colorful?(1)
