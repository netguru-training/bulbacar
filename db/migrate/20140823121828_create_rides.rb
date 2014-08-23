class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.integer :owner_id
      t.datetime :departure_at
      t.text :description

      t.timestamps
    end
  end
end
