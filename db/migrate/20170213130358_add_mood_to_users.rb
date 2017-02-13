class AddMoodToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :mood, foreign_key: true
  end
end
