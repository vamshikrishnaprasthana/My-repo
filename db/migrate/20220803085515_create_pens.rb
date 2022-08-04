class CreatePens < ActiveRecord::Migration[6.1]
  def change
    create_table :pens do |t|
      t.string :brand

      t.timestamps
    end
  end
end
