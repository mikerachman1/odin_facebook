class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  def liked_by?(user)
    likes.any? { |like| like.user == user }
  end

  def find_like(user)
    likes.find_by(user_id: user.id)
  end
end
