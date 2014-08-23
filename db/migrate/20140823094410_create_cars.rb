class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :seats
      t.integer :owner_id

      t.timestamps
    end
  end
end