FactoryBot.define do
  factory :ingredient do
    sequence(:name) { |i| "Ingredient ##{i}" }
    description 'Ingredient description'

    minimum_percentage 0.5
    maximum_percentage 2.0

    classes ['Ingredient class #1', 'Ingredient class #2']
  end
end
