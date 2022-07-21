class AddReferencesToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :account, null: true, foreign_key: true
    add_reference :payments, :course, null: true, foreign_key: true
  end
end
