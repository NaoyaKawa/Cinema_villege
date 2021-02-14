class Theater < ApplicationRecord
  has_many :prices, dependent: :destroy
  has_many :theater_tags
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
