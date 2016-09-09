class Like < ApplicationRecord
  belongs_to :user
  belongs_to :idea

  validates :user_id, uniqueness: { scope: :id,
                                  message: "Liked already!" }
end
