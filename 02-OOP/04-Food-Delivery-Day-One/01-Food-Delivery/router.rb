# TODO: implement the router of your app.



class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @answer = ""
  end
  def direction
    puts "1- list all"
    puts "2- create"
    @answer = gets.chomp
  end

  def action
    case @answer
    when "1"

    when

    else

    end
  end
end
