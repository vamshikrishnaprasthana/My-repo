class Appointment < ApplicationRecord
  belongs_to :Doctor
  belongs_to :Patient
end
