class CreateDraftSampleRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :draft_sample_relationships do |t|
      t.integer :draft_id
      t.integer :sample_id

      t.timestamps
    end
    add_index :draft_sample_relationships, :draft_id
    add_index :draft_sample_relationships, :sample_id
    add_index :draft_sample_relationships, [:draft_id, :sample_id], unique: true
  end
end
