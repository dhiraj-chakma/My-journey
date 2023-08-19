require 'csv'
require "date"
# filePath = "lib/movies.csv"

def most_successful(number, max_year, file_path)
  # TODO: return an array of most successful movies before `max_year`
  # successful movie must earn more than number provided as parameter
  success_movie = []
  CSV.foreach(file_path) do |row|
    if row[1].to_i < max_year
      success_movie << { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
      # put movies in an array of hash -->{ name: "Avatar", year: 2009, earnings: 760505847 }
    end
  end
  success_movie = success_movie.sort { |a, b| b[:earnings] <=> a[:earnings] }
  return success_movie[0..number - 1]
end
