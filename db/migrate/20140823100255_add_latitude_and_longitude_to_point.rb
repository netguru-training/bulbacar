class AddLatitudeAndLongitudeToPoint < ActiveRecord::Migration
  def change
    add_column :points, :latitude, :decimal, {precision: 10, scale: 6}
    add_column :points, :longitude, :decimal, {precision: 10, scale: 6}
  end
end
