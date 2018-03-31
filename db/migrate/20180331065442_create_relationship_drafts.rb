class CreateRelationshipDrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :relationship_drafts do |t|
      t.integer :draft_id
      t.integer :draft_picture_id

      t.timestamps
    end
        add_index :relationships, :draft_id
    add_index :relationships, :draft_picture_id
    add_index :relationships, [:draft_id, :draft_picture_id], unique: true
  end
end
