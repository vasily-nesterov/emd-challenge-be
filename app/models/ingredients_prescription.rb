# == Schema Information
#
# Table name: ingredients_prescriptions
#
#  id              :integer          not null, primary key
#  prescription_id :integer          not null
#  ingredient_id   :integer          not null
#  percentage      :float            not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class IngredientsPrescription < ApplicationRecord
  belongs_to :ingredient,   inverse_of: :ingredients_prescriptions
  belongs_to :prescription, inverse_of: :ingredients_prescriptions

  delegate :name, to: :ingredient, prefix: true
end
