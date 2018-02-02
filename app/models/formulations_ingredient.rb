# == Schema Information
#
# Table name: formulations_ingredients
#
#  id             :integer          not null, primary key
#  formulation_id :integer          not null
#  ingredient_id  :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  percentage     :float            not null
#

class FormulationsIngredient < ApplicationRecord
  belongs_to :formulation, inverse_of: :formulations_ingredients
  belongs_to :ingredient,  inverse_of: :formulations_ingredients
end
