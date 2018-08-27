class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "---"
    puts 'What do you want to do?'
    puts '1 - Display recipes'
    puts '2 - Add a new recipe'
    puts '3 - Remove a recipe'
    puts '4 - Import a recipe from Marmiton'
  end

  def menu(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then @controller.import
    else
      puts "Please type 1, 2, 3 or 4 :)"
    end
  end
end
