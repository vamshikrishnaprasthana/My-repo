class Seller < ApplicationRecord
  has_many :orders
  has_many :deliveries, through: :orders
end
