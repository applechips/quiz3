class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence:   true,
                  uniqueness: {case_sensitive: false},
                  format:      VALID_EMAIL_REGEX

    has_many :ideas, dependent: :nullify
    has_many :comments, dependent: :nullify

    has_many :likes, dependent: :destroy
    has_many :liked_ideas, through: :likes, source: :idea

    has_many :members, dependent: :nullify
    has_many :member_ideas, through: :members, source: :idea

  def full_name
  "#{first_name} #{last_name}".squeeze(" ").strip.titleize
  end

end
