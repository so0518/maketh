class CreateDrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :drafts do |t|
      t.integer :user_id
      t.integer :draft_id
      t.string :draft_name
      t.integer :gender
      t.integer :expected_price
      t.string :explanation
      t.integer :product_category
      t.integer :bookmark_count

      t.timestamps
    end
  end
end
