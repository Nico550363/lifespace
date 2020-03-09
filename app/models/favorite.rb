class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :page, counter_cache: :favorites_count

  validates :user_id, presence: true
  validates :page_id, presence: true
  validates_uniqueness_of :page_id, scope: :user_id
end
