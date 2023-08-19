def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should use Enumerable#each_with_index
  sum_of = []
  array.each_with_index { |val, index| sum_of << val if index.odd? }
  sum_of.sum
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select

  array.select { |num| num.even? }
end

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject

  array.reject { |word| word.length > max_length }
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find

  array.find { |num| num < limit }
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map

  array.map { |str| "#{str}!" }
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use Enumerable#reduce

  array.reduce("") { |accumulate, element| accumulate + element }
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use Enumerable#each_slice

  new_array = []

  array.each_slice(2) do |sorted_arr|
    new_array << sorted_arr.sort
  end

  new_array
end
