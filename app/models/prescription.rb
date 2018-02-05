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
  BIRTH_DATE_LOW_BOUNDARY  = -> { Date.new(1900, 1, 1) }
  BIRTH_DATE_HIGH_BOUNDARY = -> { Date.today - 1.year }

  belongs_to :formulation, optional: true

  has_many :ingredients_prescriptions, inverse_of: :prescription, dependent: :delete_all
  has_many :ingredients, through: :ingredients_prescriptions

  accepts_nested_attributes_for :ingredients_prescriptions

  validates :patient_name,    presence: true
  validates :patient_address, presence: true
  validate :patient_birth_date_is_present_and_meaningful

  private

  def patient_birth_date_is_present_and_meaningful
    if patient_birth_date.blank?
      errors[:patient_birth_date] << 'should be present'
    elsif (patient_birth_date < BIRTH_DATE_LOW_BOUNDARY[]) || (patient_birth_date > BIRTH_DATE_HIGH_BOUNDARY[])
      errors[:patient_birth_date] << "should be in range from #{I18n.l(BIRTH_DATE_LOW_BOUNDARY[])} to #{I18n.l(BIRTH_DATE_HIGH_BOUNDARY[])}"
    end
  end
end
