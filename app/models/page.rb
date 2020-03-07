class Page < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  
  def favorite?(page, user)
    page.favorites.find_by(user_id: user.id)
  end
end
