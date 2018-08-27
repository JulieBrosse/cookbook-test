class Repository
  def initialize
    @recipes = []
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def destroy(index)
    @recipes.delete_at(index - 1)
  end
end
