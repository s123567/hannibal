class Upvote < ApplicationRecord
  belongs_to :user
  belongs_to :quote

  validates :user, uniqueness: {scope: :quote}
end
