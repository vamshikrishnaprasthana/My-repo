class CreateBuses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|
      t.string :name
      t.string :colour

      t.timestamps
    end
  end
end
