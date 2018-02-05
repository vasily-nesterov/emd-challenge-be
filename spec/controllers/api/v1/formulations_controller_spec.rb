require 'rails_helper'

describe Api::V1::FormulationsController do
  before do
    @formulation = FactoryBot.create(:formulation)
  end

  describe '#index' do
    it 'successfully renders list of Formulations with Ingredients' do
      get :index, params: {format: :json}

      expect(response).to             have_http_status(:ok)
      expect(json_response).to        be_kind_of(Array)
      expect(json_response.length).to eq(1)

      formulation_hash = json_response[0]
      expect(formulation_hash['name']).to               start_with('Formulation #')
      expect(formulation_hash['ingredients']).to        be_kind_of(Array)
      expect(formulation_hash['ingredients'].length).to eq(1)

      ingredient_hash = formulation_hash['ingredients'][0]
      expect(ingredient_hash['name']).to start_with('Ingredient #')
    end
  end
end
