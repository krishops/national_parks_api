class AddForeignKeyForNationalParks < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :national_parks, :states
  end
end
