require 'rails_helper'

describe IngredientsPrescription do
  describe 'validations' do
    it 'is valid and saveable' do
      new_ingredients_prescription = FactoryBot.build(:ingredients_prescription)

      expect(new_ingredients_prescription).to      be_valid
      expect(new_ingredients_prescription.save).to be_truthy
    end
  end
end
