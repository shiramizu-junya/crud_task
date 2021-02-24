class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, length: { in: 5..140 }

  has_many :comments
end
