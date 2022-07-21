class AddUserReferencesToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :User, null: true, foreign_key: true
  end
end
