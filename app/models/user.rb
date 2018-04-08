class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
