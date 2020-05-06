class User < ApplicationRecord
  has_many :gossips
  validates :city, presence: true
end