class AddNationalParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :national_parks do |t|
      t.column :name, :string
      t.column :state_id, :integer
    end
  end
end
