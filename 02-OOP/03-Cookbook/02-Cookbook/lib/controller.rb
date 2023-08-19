#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative "view"
require_relative "recipe"

class Controller
  # initialize(cookbook) takes an instance of the Cookbook as an argument.
  # attr_accessor :Cookbook
  def initialize(cookbook)
    @cookbook = cookbook # -->Cookbook.new(csv_file) /initalized in app.rb
    @view = View.new
  end

  # list all the recipes
  def list
    recipe = @cookbook.all
    @view.display_list(recipe)
  end

  # add a new recipe
  def add
    # ask name of the recipe and store
    name = @view.ask_recipe_name
    # ask description and store
    descrip = @view.ask_recipe_descrip
    recipe = Recipe.new(name, descrip)
    @cookbook.create(recipe)
  end

  # remove an existing recipe
  def remove
    # ask index of the recipe
    list
    index = @view.ask_del
    @cookbook.destroy(index)
    list
  end
end

# cook = Controller.new
# p cook.add(totilla_de_patata)

# p cook.list
