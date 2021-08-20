class AddForeignKeyForStates < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :states, :parks
  end
end
