class CreateSamplePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :sample_pictures do |t|
      t.integer :sample_picture_id
      t.string :sample_picture

      t.timestamps
    end
  end
end
