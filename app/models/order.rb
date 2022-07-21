class Order < ApplicationRecord
  has_many :reviews, as: :reviewable
end
