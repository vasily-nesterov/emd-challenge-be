module Api
  module V1
    class FormulationsController < BaseController
      def index
        @formulations = Formulation.includes(:ingredients)
      end
    end
  end
end
