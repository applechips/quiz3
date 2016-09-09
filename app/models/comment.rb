class Comment < ApplicationRecord
  belongs_to :idea, optional: true
  belongs_to :user

  has_many :users, dependent: :destroy

end
