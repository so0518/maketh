class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.integer :sample_id
      t.string :sample_name
      t.integer :gender
      t.string :reference_price
      t.string :explanation
      t.integer :product_category

      t.timestamps
    end
  end
end
