class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name,               null: false
      t.float  :minimum_percentage, null: false
      t.float  :maximum_percentage, null: false
      t.text   :description
      t.jsonb  :classes

      t.timestamps
    end
  end
end
