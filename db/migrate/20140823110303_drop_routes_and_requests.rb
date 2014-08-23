class DropRoutesAndRequests < ActiveRecord::Migration
  def change
    drop_table :routes
    drop_table :requests
  end
end
