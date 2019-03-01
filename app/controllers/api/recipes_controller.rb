class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @recipe = Recipe.new(title: "eggs", chef: "Brian", ingredients: "eggs...", prep_time: 15, directions: "heat the eggs")
    @recipe.save
    render 'show.json.jbuilder'
  end
end
