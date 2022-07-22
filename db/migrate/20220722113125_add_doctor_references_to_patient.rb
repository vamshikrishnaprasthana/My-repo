class AddDoctorReferencesToPatient < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :Doctor, null: false, foreign_key: true
  end
end
