class CreateFormulationsIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :formulations_ingredients do |t|
      t.integer :formulation_id, null: false
      t.integer :ingredient_id,  null: false
      t.timestamps

      t.index [:formulation_id, :ingredient_id], unique: true, name: 'index_formulations_ingredients_on_both_keys'
    end
  end
end
