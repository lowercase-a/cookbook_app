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
    @recipe = Recipe.new(
      title: params[:input_title],
      chef: params[:input_chef],
      ingredients: params[:input_ingredients],
      prep_time: params[:input_prep_time],
      directions: params[:input_directions]
    )
    @recipe.save
    render 'show.json.jbuilder'
  end

  def update
    # find the recipe
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    # modify the recipe
    @recipe.update(
      title: params[:input_title],
      chef: params[:input_chef],
      ingredients: params[:input_ingredients],
      prep_time: params[:input_prep_time],
      directions: params[:input_directions]
    )
    render 'show.json.jbuilder'
  end
end
