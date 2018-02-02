# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

FormulationsIngredient.delete_all
Ingredient.delete_all
Formulation.delete_all

CSV.foreach "#{Rails.root}/docs/data\ samples/ingredients.csv", headers: true do |row|
  Ingredient.create! id:                 row['id'].to_i,
                     name:               row['name'],
                     minimum_percentage: row['minimum_percentage'].to_f,
                     maximum_percentage: row['maximum_percentage'].to_f,
                     description:        row['description'],
                     classes:            JSON.parse(row['classes'])
end

CSV.foreach "#{Rails.root}/docs/data\ samples/formulations.csv", headers: true do |row|
  Formulation.create! id:   row['id'].to_i,
                      name: row['name']
end

CSV.foreach "#{Rails.root}/docs/data\ samples/formulation_ingredients.csv", headers: true do |row|
  FormulationsIngredient.create! formulation_id: row['formulation_id'].to_i,
                                 ingredient_id:  row['ingredient_id'].to_i,
                                 percentage:     row['percentage'].to_f
end
