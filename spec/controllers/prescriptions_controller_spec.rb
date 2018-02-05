require 'rails_helper'

describe PrescriptionsController do
  before do
    @prescription = FactoryBot.create(:prescription)
  end

  describe '#show' do
    it 'successfully renders PDF document' do
      get :show, params: {format: :pdf, id: @prescription.id}
      expect(response).to have_http_status(:ok)
    end
  end
end
