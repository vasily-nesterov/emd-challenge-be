# == Schema Information
#
# Table name: ingredients
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  minimum_percentage :float            not null
#  maximum_percentage :float            not null
#  description        :text
#  classes            :jsonb
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Ingredient < ApplicationRecord
  has_many :formulations_ingredients, inverse_of: :ingredient, dependent: :delete_all
  has_many :formulations, through: :formulations_ingredients

  has_many :ingredients_prescriptions, inverse_of: :ingredient, dependent: :delete_all
  has_many :prescriptions, through: :ingredients_prescriptions

  validates :name,               presence: true, uniqueness: true
  validates :minimum_percentage, presence: true, numericality: {greater_than: 0, less_than: 100}
  validates :maximum_percentage, presence: true, numericality: {greater_than: 0, less_than: 100}

  def classes
    read_attribute(:classes) || []
  end
end
