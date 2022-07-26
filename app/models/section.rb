class Section < ApplicationRecord
  #belongs_to :Document
  has_many :paragraphs
end
