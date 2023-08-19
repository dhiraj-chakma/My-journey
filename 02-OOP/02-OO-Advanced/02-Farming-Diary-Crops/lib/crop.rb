# Introduce a parent class named Crop and move the shared methods into it.
class Crop
  # give permission to read and change the instance variable
  attr_reader :grains

  def initialize
    # initialize sets the instance variable @grains to zero.
    @grains = 0
  end

  # ripe? returns true if there are at least 15 grains.
  def ripe?
    @grains >= 15
  end
end



# Don’t forget to require_relative.
# Make Corn and Rice classes inherit from Crop.
