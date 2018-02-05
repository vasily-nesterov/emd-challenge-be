FactoryBot.define do
  factory :formulations_ingredient do
    association :formulation
    association :ingredient

    percentage 5.0
  end
end



