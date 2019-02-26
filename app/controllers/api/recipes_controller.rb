class Api::RecipesController < ApplicationController
  def recipe
    # get a recipe from the db
    @recipe = Recipe.first
    render 'my_recipe.json.jbuilder'
  end
end
