require 'rails_helper'

describe FormulationsIngredient do
  describe 'validations' do
    it 'is valid and saveable' do
      new_formulations_ingredient = FactoryBot.build(:formulations_ingredient)

      expect(new_formulations_ingredient).to      be_valid
      expect(new_formulations_ingredient.save).to be_truthy
    end
  end
end
