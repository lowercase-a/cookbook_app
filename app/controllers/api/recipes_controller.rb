class Api::RecipesController < ApplicationController
  def index
    search_term = params[:search]
    if search_term
      @recipes = Recipe.where("title iLIKE ?", "%#{search_term}%")
    else
      @recipes = Recipe.all
    end

    @recipes = @recipes.where('ingredients LIKE ?', "%something%")

    the_order = params[:order]
    @recipes = @recipes.order(:prep_time => the_order)
    # @recipes.order!(:prep_time => the_order)
    render 'index.json.jbuilder'
  end

  def show
    p 'current_user'
    p current_user
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

  def destroy
    # find it
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    # destroy it
    @recipe.destroy
    render 'show.json.jbuilder'
  end
end
