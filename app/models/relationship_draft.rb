class RelationshipDraft < ApplicationRecord
    belongs_to :draft, class_name: "Draft"
    belongs_to :draft_picture, class_name: "DraftPicture"
end
