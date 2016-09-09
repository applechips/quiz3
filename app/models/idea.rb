class Idea < ApplicationRecord
  has_many :comments, dependent: :destroy

  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  has_many :liked_users, through: :likes, source: :user

  has_many :members, dependent: :destroy
  has_many :member_users, through: :likes, source: :user

  def like_for(user)
    likes.find_by_user_id user
  end

  def liked_by?(user)
    likes.exists?(user: user)
  end

  def member_for(user)
    members.find_by_user_id user
  end

  def member_by?(user)
    members.exists?(user: user)
  end

  

end
