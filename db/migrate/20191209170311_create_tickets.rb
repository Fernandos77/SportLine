class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :games_id
      t.integer :stock
      t.float :price
      t.integer :floor
      t.integer :sector
      t.string :balcony

      t.timestamps
    end
  end
end
