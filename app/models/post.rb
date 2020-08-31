class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user_id, presence: true, numericality: true
  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
  validates :content, presence: true
end
