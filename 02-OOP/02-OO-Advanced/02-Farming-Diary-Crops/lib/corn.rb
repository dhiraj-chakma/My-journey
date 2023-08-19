# TODO: code the Corn class
require_relative "crop"

class Corn < Crop
  # water!: adds 10 grains anytime it is called.
  def water!
    @grains += 10
  end
end
