class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.string :patient_name,       null: false
      t.string :patient_address,    null: false
      t.date   :patient_birth_date, null: false

      t.timestamps
    end
  end
end
