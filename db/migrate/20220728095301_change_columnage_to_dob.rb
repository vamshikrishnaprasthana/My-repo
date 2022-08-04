class ChangeColumnageToDob < ActiveRecord::Migration[6.1]
  def change
    rename_column(:students, :age, :dob)

  end
end
