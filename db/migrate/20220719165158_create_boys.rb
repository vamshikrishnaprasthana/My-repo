class CreateBoys < ActiveRecord::Migration[6.0]
  def change
    create_table :boys do |t|
      t.string :name

      t.timestamps
    end
  end
end
