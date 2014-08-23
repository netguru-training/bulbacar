class AddDateToRoute < ActiveRecord::Migration
  def change
    add_column :routes, :date, :datetime
  end
end
