require_relative "animal"

class Chicken < Animal
  attr_accessor :gender
  attr_reader :eggs

  def initialize(gender)
    super()
    @eggs = 0
    @gender = gender
  end

  def talk
    return "cluck cluck" if @gender == "female"
    return "cock-a-doodle-doo" if @gender == "male"
  end

  def feed!
    super
    @eggs += 2 if @gender == "female"
    @eggs += 0 if @gender == "male"
  end
end

# female_chicken = Chicken.new('male')
# p female_chicken.feed!
