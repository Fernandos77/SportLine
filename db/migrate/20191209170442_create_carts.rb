class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :quantity
      t.text :description
      t.integer :ticket_id
      t.float :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
