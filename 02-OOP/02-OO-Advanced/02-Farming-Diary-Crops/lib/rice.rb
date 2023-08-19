# TODO: code the Rice class
require_relative "crop"

class Rice < Crop
  # water!: adds 10 grains anytime it is called.
  def water!
    @grains += 5
  end

  # Rice has a specific method called transplant! which produces 10 more grains.
  def transplant!
    @grains += 10
  end
end
