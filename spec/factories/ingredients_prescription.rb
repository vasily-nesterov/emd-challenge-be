FactoryBot.define do
  factory :ingredients_prescription do
    association :prescription
    association :ingredient

    percentage 5.0
  end
end


