class Account < ApplicationRecord
  has_many :courses
  has_many :payments
  has_many :courses, through: :payments
end
