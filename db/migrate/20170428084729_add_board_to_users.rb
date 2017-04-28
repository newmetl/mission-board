class AddBoardToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :board, foreign_key: true
    add_reference :moods, :board, foreign_key: true
    add_reference :categories, :board, foreign_key: true
    add_reference :roles, :board, foreign_key: true
    add_reference :todos, :board, foreign_key: true
  end
end
