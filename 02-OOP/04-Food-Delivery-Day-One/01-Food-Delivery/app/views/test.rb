require_relative "../models/meal"

require_relative "../repositories/meal_repository"

require_relative "../controllers/meals_controller"


require_relative "../../router"

meal_repo = MealRepository.new(File.join(__dir__, "../../data/meals.csv"))
meal_controll = MealController.new(meal_repo)
router = Router.new(meal_controll)
router.direction
router.action

#p meal_controll.list
# meal_repo.create(Meal.new(name: "food", price: 2))
# meal_repo.create(Meal.new(name: "food2", price: 22))
# meal_repo.all
