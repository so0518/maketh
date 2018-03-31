class Draft < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :relationship_drafts, foreign_key:"draft_picture_id", dependent: :destroy
end
