class Animal
  def initialize
    @energy = 0
  end

  def feed!
    @energy += 1
  end
end

# farm = Farm.new
# farm.feed!
# p farm.energy
