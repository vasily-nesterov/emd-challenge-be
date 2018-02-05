FactoryBot.define do
  factory :prescription do
    patient_name       'Mickey Mouse'
    patient_address    'Disneyland'
    patient_birth_date { Date.today - 20.years }

    after :build do |prescription|
      prescription.ingredients_prescriptions << FactoryBot.build(:ingredients_prescription, prescription: prescription)
    end
  end
end
