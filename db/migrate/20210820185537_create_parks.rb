class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.column :name, :string
      t.column :location, :string
      t.column :national, :boolean, :default => false
      t.column :state, :boolean, :default => false      
    end
  end
end
