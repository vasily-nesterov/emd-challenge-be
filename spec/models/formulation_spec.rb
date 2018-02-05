require 'rails_helper'

describe Formulation do
  let(:formulation) { FactoryBot.create(:formulation) }

  describe 'validations' do
    it 'is valid and saveable' do
      new_formulation = FactoryBot.build(:formulation)

      expect(new_formulation).to      be_valid
      expect(new_formulation.save).to be_truthy
    end
  end
end
