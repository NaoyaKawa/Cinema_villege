class Theater < ApplicationRecord
  has_many :prices, dependent: :destroy
  has_many :theater_tags
  attachment :image
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
