class Post < ApplicationRecord
  has_one_attached :clip
  belongs_to :user
  validates :title, presence: true
  validates :text, presence: true
end
