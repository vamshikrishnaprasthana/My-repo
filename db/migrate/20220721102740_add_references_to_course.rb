class AddReferencesToCourse < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :Account, null: true, foreign_key: true
  end
end
