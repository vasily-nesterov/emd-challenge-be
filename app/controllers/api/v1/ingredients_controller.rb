module Api
  module V1
    class IngredientsController < BaseController
      def index
        @ingredients = Ingredient.all
      end
    end
  end
end
