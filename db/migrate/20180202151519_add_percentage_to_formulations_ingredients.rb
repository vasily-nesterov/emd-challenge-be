class AddPercentageToFormulationsIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :formulations_ingredients, :percentage, :float, null: false
  end
end
