class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.text :sports_type

      t.timestamps
    end
  end
end
