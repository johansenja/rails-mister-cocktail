class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [ :show, :edit, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = @cocktail.doses
  end

  def edit
    @ingredients = []
   Ingredient.all.each do |ingredient|
      @ingredients << ingredient
      @ingredients.sort!
    end

    @doses = []
    Dose.all.each do |dose|
      @doses << dose.description
      @doses.sort!
    end
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def new
    @cocktail = Cocktail.new
    @ingredients = []
    Ingredient.all.each do |ingredient|
      @ingredients << ingredient.name
      @ingredients.sort!
    end

    @doses = []
    Dose.all.each do |dose|
      @doses << dose.description
      @doses.sort!
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :method, :photo)
  end
end
