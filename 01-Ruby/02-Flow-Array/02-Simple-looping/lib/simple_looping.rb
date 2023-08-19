def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  # check whether min value is greater than max
  sum = 0

  return -1 if min > max

  for num in min..max
    sum += num
  end

  return sum
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  # check whether min value is greater than max
  return -1 if min > max

  sum = 0
  counter = min

  while counter <= max

    sum += counter
    counter += 1
  end

  return sum
end
