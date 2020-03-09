class Page < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments

  # 検索
  def self.search(search)
    return Page.all unless search
    Page.where(['name LIKE ?', "%#{search}%"])
  end
end
