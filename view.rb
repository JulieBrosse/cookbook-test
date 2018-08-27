class View
  def display(recipes)
    if recipes == []
      puts "---------------"
      puts "Sorry there are no recipes yet!"
    else
      recipes.each_with_index do |recipe, index|
        puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
      end
    end
  end

  def ask_new_recipe_name
    puts "Name?"
    name = gets.chomp
  end

  def ask_new_recipe_description
    puts "Description?"
    description = gets.chomp
  end

  def action_confirmation
    puts "------------"
    puts 'The action is confirmed!'
  end

  def ask_index
    puts "What index do you want to delete?"
    gets.chomp.to_i
  end
end
