# == Schema Information
#
# Table name: formulations_ingredients
#
#  id             :integer          not null, primary key
#  formulation_id :integer          not null
#  ingredient_id  :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class FormulationsIngredient < ApplicationRecord
end
