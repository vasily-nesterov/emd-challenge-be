# == Schema Information
#
# Table name: formulations
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Formulation < ApplicationRecord
  has_many :formulations_ingredients, inverse_of: :formulation, dependent: :delete_all
  has_many :ingredients, through: :formulations_ingredients
end
