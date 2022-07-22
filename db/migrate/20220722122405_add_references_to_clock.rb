class AddReferencesToClock < ActiveRecord::Migration[6.0]
  def change
    add_reference :clocks, :Doctor, null: false, foreign_key: true
    add_reference :clocks, :Patient, null: false, foreign_key: true
    add_reference :clocks, :Appointment, null: false, foreign_key: true
  end
end
