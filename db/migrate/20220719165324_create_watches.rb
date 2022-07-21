class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|
      t.string :name
      t.references :Boy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
