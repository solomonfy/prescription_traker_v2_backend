class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.integer :medication_id
      t.string :frequency
      t.string :dose
      t.string :to_be_taken_on
      t.boolean :taken
      t.string :prescription_date

      t.timestamps
    end
  end
end
