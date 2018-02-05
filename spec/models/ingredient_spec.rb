require 'rails_helper'

describe Ingredient do
  let(:ingredient) { FactoryBot.create(:ingredient) }

  describe 'validations' do
    it 'is valid and saveable' do
      new_ingredient = FactoryBot.build(:ingredient)

      expect(new_ingredient).to      be_valid
      expect(new_ingredient.save).to be_truthy
    end
  end

  describe '#classes' do
    it 'returns Ingredient classes when they are present' do
      expect(ingredient.classes).to eq(['Ingredient class #1', 'Ingredient class #2'])
    end

    it 'returns empty array when classes are not set' do
      expect(Ingredient.new.classes).to eq([])
    end
  end
end
