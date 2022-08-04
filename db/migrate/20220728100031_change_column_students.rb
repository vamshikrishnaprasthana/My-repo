class ChangeColumnStudents < ActiveRecord::Migration[6.1]
  def change
    change_column :students, :dob, :integer
  end
end
