class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :email, uniqueness: true, presence: true, length: { minimum: 7, maximum: 50 }
  validates :username, uniqueness: true, presence: true, length: { minimum: 4, maximum: 10 }
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
end
