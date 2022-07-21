class Course < ApplicationRecord
   has_and_belongs_to_many :payments
   has_many :payments
   has_many :accounts, through: :payments
end
