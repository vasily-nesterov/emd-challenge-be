class PrescriptionsController < ApplicationController
  def show
    @prescription = Prescription.find(params[:id])

    respond_to do |format|
      format.pdf do
        rendered_template = render_to_string('prescriptions/show')
        generated_pdf     = WickedPdf.new.pdf_from_string(rendered_template)

        send_data(generated_pdf, filename: "Prescription ##{@prescription.id}.pdf", type: 'application/pdf')
      end
    end
  end
end
