class AddStatesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.column :code, :string
      t.column :park_id, :integer
    end
  end
end
