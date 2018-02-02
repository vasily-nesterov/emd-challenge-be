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

require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
