require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    name = @view.ask_new_recipe_name
    description = @view.ask_new_recipe_description
    recipe = Recipe.new(name, description)
    @repository.add_recipe(recipe)
    @view.action_confirmation
  end

  def destroy
    @view.display(recipes)
    index = @view.ask_index
    @repository.destroy(index)
    @view.action_confirmation
  end

  def import
  end


  private

  def display_recipes
    recipes = @repository.all
    @view.display(recipes)
  end
end
