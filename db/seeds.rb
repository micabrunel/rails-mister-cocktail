Ingredient.destroy_all
require 'json'
require 'open-uri'
puts "seeding....."
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)
ingredients_list = ingredients["drinks"]
ingredients_list.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
  end
puts 'Seeding done, gg'
