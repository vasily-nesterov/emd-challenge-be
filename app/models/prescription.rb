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

class Prescription < ApplicationRecord
  belongs_to :formulation, optional: true

  has_many :ingredients_prescriptions, inverse_of: :prescription, dependent: :delete_all
  has_many :ingredients, through: :ingredients_prescriptions

  accepts_nested_attributes_for :ingredients_prescriptions
end
