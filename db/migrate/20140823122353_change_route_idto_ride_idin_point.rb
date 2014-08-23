class ChangeRouteIdtoRideIdinPoint < ActiveRecord::Migration
  def change
    rename_column :points, :route_id, :ride_id
  end
end
