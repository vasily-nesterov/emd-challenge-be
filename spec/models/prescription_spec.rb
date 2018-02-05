require 'rails_helper'

describe Prescription do
  let(:prescription) { FactoryBot.create(:prescription) }

  describe 'validations' do
    it 'is valid and saveable' do
      new_prescription = FactoryBot.build(:prescription)

      expect(new_prescription).to      be_valid
      expect(new_prescription.save).to be_truthy
    end

    it 'fail when Prescription does not have :patient_birth_date' do
      new_prescription = FactoryBot.build(:prescription, patient_birth_date: nil)

      expect(new_prescription).not_to be_valid
      expect(new_prescription.errors[:patient_birth_date]).to eq(['should be present'])
    end

    it 'fail when Prescription :patient_birth_date is too far away' do
      new_prescription = FactoryBot.build(:prescription, patient_birth_date: Date.new(1800, 1, 1))

      Timecop.freeze Date.new(2018, 1, 1) do
        expect(new_prescription).not_to be_valid
        expect(new_prescription.errors[:patient_birth_date]).to eq(['should be in range from 01/01/1900 to 01/01/2017'])
      end
    end

    it 'fail when Prescription :patient_birth_date is too far away into the future' do
      new_prescription = FactoryBot.build(:prescription, patient_birth_date: Date.new(2017, 1, 5))

      Timecop.freeze Date.new(2018, 1, 1) do
        expect(new_prescription).not_to be_valid
        expect(new_prescription.errors[:patient_birth_date]).to eq(['should be in range from 01/01/1900 to 01/01/2017'])
      end
    end
  end
end


