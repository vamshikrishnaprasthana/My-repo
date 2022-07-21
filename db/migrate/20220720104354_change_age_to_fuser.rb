class ChangeAgeToFuser < ActiveRecord::Migration[6.0]
  def change
    change_column :fusers, :age, :integer
  end
end
