class Sample < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :relationship_samples, foreign_key:"sample_picture_id", dependent: :destroy
end
