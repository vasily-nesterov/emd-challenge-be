FactoryBot.define do
  factory :formulation do
    sequence(:name) { |i| "Formulation ##{i}" }

    after :build do |formulation|
      formulation.formulations_ingredients << FactoryBot.build(:formulations_ingredient, formulation: formulation)
    end
  end
end
