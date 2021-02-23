class Magazine < ApplicationRecord
  attachment :image
  
  validates :title, :presence => {:message => 'タイトルを入力してください'}
  validates :content, :presence => {:message => '内容を入力してください'}
  validates :image, :presence => {:message => '写真を挿入してください'}
end
