module Api
    module V1
      class PrescriptionsController < BaseController
        def create
          @prescription = Prescription.new(params[:prescription])

          if @prescription.save
            head :created
          else
            render json: {errors: @prescription.errors}, status: :unprocessable_entity
          end
        end
      end
    end
  end
