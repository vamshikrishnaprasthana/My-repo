class AddReferencesToMedicine < ActiveRecord::Migration[6.0]
  def change
    add_reference :medicines, :Doctor, null: false, foreign_key: true
  end
end
