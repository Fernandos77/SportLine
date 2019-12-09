class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :description
      t.string :sports_id
      t.text :address
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
