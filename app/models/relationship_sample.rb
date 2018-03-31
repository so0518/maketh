class RelationshipSample < ApplicationRecord
    belongs_to :sample, class_name: "Sample"
    belongs_to :sample_picture, class_name: "SamplePicture"
end
