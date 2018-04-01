class CreateRelationshipSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :relationship_samples do |t|
      t.integer :sample_id
      t.integer :sample_picture_id

      t.timestamps
    end
    add_index :relationship_samples, :sample_id
    add_index :relationship_samples, :sample_picture_id
    add_index :relationship_samples, [:sample_id, :sample_picture_id], unique: true
  end
end
