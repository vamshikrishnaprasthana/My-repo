class School < ApplicationRecord
  #belongs_to :Teacher
  has_many :students
end
