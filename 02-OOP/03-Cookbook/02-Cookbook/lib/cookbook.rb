class Cookbook
  attr_accessor :recipes

  def initialize(csv_file)
    # initialize(csv_file_path) which loads existing Recipe from the CSV
    @csv_file = csv_file
    @recipes = []
    load_csv
  end

  def all
    # all which returns all the recipes
    @recipes
  end

  # create(recipe) which creates a recipe and adds it to the cookbook
  def create(recipe)
    @recipes << recipe
    save_csv
  end

  # destroy(recipe_index) which removes a recipe from the cookbook.
  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
    # binding.pry
    save_csv
  end

  private

  def load_csv
    # loads the existing data from the CSV file to our application
    CSV.foreach(@csv_file) do |row|
      # fill it
      recipe = Recipe.new(row[0], row[1])
      @recipes << recipe
    end
  end

  # adds the new recipes as new rows in our CSV file
  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
