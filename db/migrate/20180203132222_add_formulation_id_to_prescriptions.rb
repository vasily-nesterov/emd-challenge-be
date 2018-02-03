class AddFormulationIdToPrescriptions < ActiveRecord::Migration[5.1]
  def change
    add_column :prescriptions, :formulation_id, :integer
  end
end
