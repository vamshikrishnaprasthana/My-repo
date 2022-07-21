class Animal < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { minimum: 3 }
  #  validates :name, string: true
    validates :name, uniqueness: true


end
