class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :reviewable_type
      t.integer :reviewable_id

      t.timestamps
    end
  end
end
