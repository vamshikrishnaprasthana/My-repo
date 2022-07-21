class Payment < ApplicationRecord
  has_and_belongs_to_many :courses
  belongs_to:account
  belongs_to:course
end
