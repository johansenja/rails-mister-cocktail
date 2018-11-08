require 'open-uri'
require 'json'
require 'faker'

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
file = open(url).read
ingredients_json = JSON.parse(file)
ingredients = []
ingredients_json["drinks"].each do |hash| # array of hashes
  ingredient = Ingredient.create(name: hash["strIngredient1"])
  puts ingredient.valid? unless ingredient.valid? # if not valid, puts false
  ingredients << ingredient
end

cocktails = []
25.times do
  quant = (3..5).to_a
  doses = []
  quant.sample.times do
    doses << Dose.new(ingredient: ingredients.sample, description: Faker::Measurement.volume)
  end
  cocktail = Cocktail.create(method: Faker::Lorem.paragraphs, name: Faker::Superhero.name, doses: doses)
  cocktails << cocktail
end
