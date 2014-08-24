class AddFinishedToRide < ActiveRecord::Migration
  def change
    add_column :rides, :finished, :boolean, default: false
  end
end
