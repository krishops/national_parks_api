class AddForeignKeyForStateParks < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :state_parks, :states
  end
end
