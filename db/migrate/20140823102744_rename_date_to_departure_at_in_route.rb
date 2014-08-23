class RenameDateToDepartureAtInRoute < ActiveRecord::Migration
  def change
    rename_column :routes, :date, :departure_date
  end
end
