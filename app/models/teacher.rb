class Teacher < ApplicationRecord
  has_many :schools
  has_many :students, through: :schools
end
