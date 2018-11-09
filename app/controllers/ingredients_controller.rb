class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @dose = Dose.find_by_ingredient_id(@ingredient.id)
  end
end
