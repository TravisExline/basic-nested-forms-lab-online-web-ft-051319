class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).premit(:title, 
    ingredient_attributes: [
      :name,
      :quantity
      ]
    )
  end
end
