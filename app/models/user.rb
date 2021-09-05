class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  mount_uploader :image, ImageUploader
end
