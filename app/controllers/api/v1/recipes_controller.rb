class Api::V1::RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show destroy]

  
  def index
    recipe = Recipe.all.order(created_at: :desc)
    render json: recipe
  end

  def create
    recipe = Recipe.create!(recipe_params)
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def show
  end

  def destroy
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instruction)
  end
end
