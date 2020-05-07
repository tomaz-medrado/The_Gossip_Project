class Gossip < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :category
  validates :title, length: {minimum: 3, maximum:15}
  validates :content, presence: true
end
