class Theater < ApplicationRecord
  has_many :prices, dependent: :destroy
  has_many :theater_tags
  attachment :image
end
