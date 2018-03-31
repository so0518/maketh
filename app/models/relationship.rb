class Relationship < ApplicationRecord
    belongs_to :followed_user, class_name: "User"
    belongs_to :follower, class_name: "User"
    validates :followed_user_id, presence: true
    validates :follower_id, presence: true
end
