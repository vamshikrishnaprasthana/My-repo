class Changecolumndate < ActiveRecord::Migration[6.1]
  def change
    change_column :students, :dob,
  end
end
