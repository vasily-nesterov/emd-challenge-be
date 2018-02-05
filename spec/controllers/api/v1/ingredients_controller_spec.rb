require 'rails_helper'

describe Api::V1::IngredientsController do
  before do
    @ingredient = FactoryBot.create(:ingredient)
  end

  describe '#index' do
    it 'successfully renders list of Ingredients' do
      get :index, params: {format: :json}

      expect(response).to             have_http_status(:ok)
      expect(json_response).to        be_kind_of(Array)
      expect(json_response.length).to eq(1)

      ingredient_hash = json_response[0]
      expect(ingredient_hash['name']).to start_with('Ingredient #')
    end
  end
end
