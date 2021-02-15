class TheaterTag < ApplicationRecord
  belongs_to :theater
  belongs_to :tag
end
