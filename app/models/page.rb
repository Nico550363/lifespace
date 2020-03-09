class Page < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :favorites, dependent: :destroy
  
  def favorite_user(user_id)
    favorites.find_by(user_id: user_id)
  end
end
