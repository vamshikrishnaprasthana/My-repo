class ChangeColumnStudentas < ActiveRecord::Migration[6.1]
  def change
    change_column :students, :dob, :date

  end
end
