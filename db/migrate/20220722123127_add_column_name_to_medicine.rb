class AddColumnNameToMedicine < ActiveRecord::Migration[6.0]
  def change
    add_column :medicines, :Medicine, :string
  end
end
