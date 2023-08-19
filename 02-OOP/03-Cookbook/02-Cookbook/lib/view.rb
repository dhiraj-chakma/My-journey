# TODO: Define your View class here, to display elements to the user and ask them for their input
require_relative "controller"
require "pry-byebug"
class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} --> #{recipe.description}"
    end
  end

  def ask_recipe_name
    puts "give me a name of recipe"
    gets.chomp
  end

  def ask_recipe_descrip
    puts "give me the description of recipe"
    gets.chomp
  end

  def ask_del
    puts "which item to delete"
    gets.chomp.to_i - 1
  end
end

# why = View.new
# why.display_list(["1","2"])
