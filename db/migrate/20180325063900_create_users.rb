class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.integer :height
      t.string :cellphone
      t.string :email
      t.integer :paymentmethod
      t.integer :payeeaccount

      t.timestamps
    end
  end
end
