class User < ApplicationRecord
    has_many :drafts, dependent: :destroy
    has_many :relationships, foreign_key: "followed_user_id", dependent: :destroy
    has_many :followers, through: relationships, source: follower
    
    
end
