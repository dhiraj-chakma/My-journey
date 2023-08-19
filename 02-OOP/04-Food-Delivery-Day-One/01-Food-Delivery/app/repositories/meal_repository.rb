
require_relative "../models/meal"
require "csv"


class MealRepository
  attr_accessor :meals

  def initialize(csv_filepath)
    @csv_filepath = csv_filepath
    @meals = []
    #@next_id = @meals.length == 0 ? 1 : @meals.last.id + 1
    load_csv if File.exists?(@csv_filepath)
  end

  def all
    @meals
  end

  private

  def load_csv
    CSV.foreach(@csv_filepath, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
  end
end

# , headers: :first_row, header_converters: :symbol

  # def create(ins_meal)
  #   ins_meal.id = @next_id
  #   @meals << ins_meal
  #   @next_id += 1
  # end
