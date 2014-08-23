class AddDescriptionToRoute < ActiveRecord::Migration
  def change
    add_column :routes, :description, :text
  end
end
