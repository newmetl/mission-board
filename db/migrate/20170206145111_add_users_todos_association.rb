class AddUsersTodosAssociation < ActiveRecord::Migration[5.0]
  def change
    create_table :todos_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :todo, index: true
    end
  end
end
