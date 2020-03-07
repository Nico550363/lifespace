class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pages
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :favorite_pages, through: :favorites, source: :page
end
