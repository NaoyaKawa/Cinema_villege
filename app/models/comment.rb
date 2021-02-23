class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :theater
  
  validates :clean, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
  
  validates :comment, presence: true
  validates :clean, presence: true
end
