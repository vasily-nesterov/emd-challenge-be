# == Schema Information
#
# Table name: prescriptions
#
#  id                 :integer          not null, primary key
#  patient_name       :string           not null
#  patient_address    :string           not null
#  patient_birth_date :date             not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  formulation_id     :integer
#

require 'test_helper'

class PrescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
