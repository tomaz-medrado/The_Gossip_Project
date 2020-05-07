class User < ApplicationRecord
  has_secure_password
  has_many :gossips
  has_many :likes, dependent: :destroy
  validates :city, presence: true
  validates :email, presence: true
  validates :password, presence: true
end