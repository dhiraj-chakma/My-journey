class Recipe
  attr_reader :name, :description

  # it basically takes a name and describes how to cook it
  def initialize(name, description)
    @name = name
    @description = description
  end
end
