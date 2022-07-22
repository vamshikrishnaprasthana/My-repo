class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :mfg_date
      t.string :exp_date
      t.references :Patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
