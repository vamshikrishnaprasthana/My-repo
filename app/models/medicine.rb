class Medicine < ApplicationRecord
  belongs_to :Patient
  belongs_to :Doctor
end
