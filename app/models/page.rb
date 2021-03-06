class Page < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments

  # validates
  validates :name, presence: true, length: { maximum: 40}
  validates :style, presence: true
  validates :text, length: { maximum: 400}
  validates :image, presence:true, on: :create


  # 検索
  def self.search(search)
    return Page.all unless search
    Page.where(['name LIKE ?', "%#{search}%"])
  end
end
