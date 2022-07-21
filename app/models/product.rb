class Product < ApplicationRecord
has_many :reviews, as: :reviewable
end
