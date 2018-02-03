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

require 'test_helper'

class IngredientsPrescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
