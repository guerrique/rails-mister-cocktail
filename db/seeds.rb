# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
# require 'faker'

Ingredient.destroy_all
Cocktail.destroy_all

response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data = JSON.parse(response)
data['drinks'].each do |thing|
  Ingredient.create(name: thing["strIngredient1"])
end


100.times do
  Cocktail.create(name: Faker::Superhero.name)
end
