module Api
  module V1
    class PrescriptionsController < BaseController
      def create
        @prescription = Prescription.new(prescription_params)

        if @prescription.save
          render :show
        else
          render json: {errors: @prescription.errors}, status: :unprocessable_entity
        end
      end

      private

      def prescription_params
        params.require(:prescription).permit(
          :patient_name,
          :patient_address,
          :patient_birth_date,
          :formulation_id,
          ingredients_prescriptions_attributes: [:ingredient_id, :percentage]
        )
      end
    end
  end
end
