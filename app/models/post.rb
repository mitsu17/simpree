class Post < ApplicationRecord
  has_one_attached :clip
  belongs_to :user
  validates :title, presence: true
  validates :text, presence: true

  def self.search(search)
    if search
      Post.where(['title LIKE(?)', "%#{search}%"])
    else
      Post.all
    end
  end
end
