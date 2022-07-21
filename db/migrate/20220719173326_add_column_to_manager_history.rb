class AddColumnToManagerHistory < ActiveRecord::Migration[6.0]
  def change
    add_column :manager_histories, :DateOfJoining, :string
  end
end
