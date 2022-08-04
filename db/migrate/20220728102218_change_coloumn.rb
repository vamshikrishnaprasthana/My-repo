class ChangeColoumn < ActiveRecord::Migration[6.1]
  def change
    change_column :students, :dob, :string
  end
end
