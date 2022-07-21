class Laptop < ApplicationRecord
   validates :name, presence: true
   validates :cost, numericality: true
end
