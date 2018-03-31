class CreateDraftPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :draft_pictures do |t|
      t.integer :draft_picture_id
      t.string :draft_picture

      t.timestamps
    end
  end
end
