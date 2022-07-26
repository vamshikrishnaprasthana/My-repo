class Order < ApplicationRecord
#  belongs_to :seller
  has_many :deliveries
end
