class AddReferencesToReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :user, null: true, foreign_key: true
  end
end
