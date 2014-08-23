class AddRouteIdToPoint < ActiveRecord::Migration
  def change
    add_column :points, :route_id, :integer
  end
end
