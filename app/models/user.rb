class User < ApplicationRecord
    has_many :drafts, dependent: :destroy
    has_many :relationships, foreign_key: "followed_user_id", dependent: :destroy
    has_many :followers, through: relation
    
    # def following?(other_user)
    # relationships.find_by(followed_user_id: other_user.id)
    # end

    # def follow!(other_user)
    # relationships.create!(followed_id: other_user.id)
    # end
    
end
