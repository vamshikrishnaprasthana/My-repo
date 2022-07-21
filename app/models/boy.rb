class Boy < ApplicationRecord
  has_one :watch
  has_many :watches
end
