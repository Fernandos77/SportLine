class AddUserToSports < ActiveRecord::Migration[5.2]
  def change
    add_reference :sports, :user, foreign_key: true
  end
end
