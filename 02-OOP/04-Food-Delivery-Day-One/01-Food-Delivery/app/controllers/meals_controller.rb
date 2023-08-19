#require_relative "../repositories/meal_repository"

class MealController
  def initialize(meal_repository)
    @meal_repository = meal_repository
  end

  def list
    @meal_repository.all
  end
end
