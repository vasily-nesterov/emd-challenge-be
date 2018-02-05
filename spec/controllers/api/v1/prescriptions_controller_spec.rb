require 'rails_helper'

describe Api::V1::PrescriptionsController do
  describe '#create' do
    before do
      @ingredient = FactoryBot.create(:ingredient)

      @prescription_params = {
        patient_name:    'Mickey Mouse',
        patient_address: 'Disneyland',
        patient_birth_date: Date.today - 20.years,

        ingredients_prescriptions_attributes: [
          {ingredient_id: @ingredient, percentage: @ingredient.minimum_percentage}
        ]
      }
    end

    it 'successfully creates Prescription and responds with it' do
      expect { expect {
        post :create, params: {format: :json, prescription: @prescription_params}
      }.to change { Prescription.count }.by(1)
      }.to change {IngredientsPrescription.count }.by(1)

      expect(response).to      have_http_status(:ok)
      expect(json_response).to be_kind_of(Hash)

      expect(json_response['id']).to           be_present
      expect(json_response['patient_name']).to eq('Mickey Mouse')
    end

    it 'does not create Prescription and responds with errors when Prescription params are incorrect' do
      expect {
        post :create, params: {format: :json, prescription: {patient_name: ''}}
      }.not_to change { Prescription.count }

      expect(response).to have_http_status(:unprocessable_entity)

      expect(json_response).to           be_kind_of(Hash)
      expect(json_response['errors']).to be_present
    end
  end
end
