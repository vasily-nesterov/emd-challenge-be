class CreateIngredientsPrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients_prescriptions do |t|
      t.integer :prescription_id, null: false
      t.integer :ingredient_id,   null: false
      t.float   :percentage,      null: false
      t.timestamps

      t.index [:prescription_id, :ingredient_id], unique: true, name: 'index_prescriptions_ingredients_on_both_keys'
    end
  end
end
