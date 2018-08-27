class View
  def display(recipes)
    recipes.each_with_index do |recipes, index|
      puts "#{index + 1}  - #{recipes[:name]} - #{recipes[:description]}"
    end
  end

  def ask_new_recipe
    puts "what recipe do you want to add?"
    puts "Name?"
    name = gets.chomp
    puts "Description?"
    description = gets.chomp
  end

  def action_confirmation
    puts 'The action is confirmed!'
  end

  def ask_index
    puts "What index do you want to delete?"
    gets.chomp
  end
end
