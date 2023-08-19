require "pry-byebug"

class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :fruits, :age, :height

  def initialize
    # age will be zero at birth
    @age = 0
    @height = 0
    @fruits = 0
  end

  # the tree is dead when age is over 100
  def dead?
    @age > 50
  end

  # minus a fruit if this function is called
  def pick_a_fruit!
    fruits >= 1 ? @fruits -= 1 : @fruits
  end

  # build the logic after one year passes
  def one_year_passes!
    return "its dead" if dead?

    @age += 1
    @fruits = 0
    # make all the changes to the tree after one year
    if @age < 10
      @height += 1
      return @fruits += 100 if @age > 5
    end
    @height += 1 if @age == 10
    @fruits += 200 if @age == 10
    @fruits += 200 if @age > 10 && @age < 15
  end
end
