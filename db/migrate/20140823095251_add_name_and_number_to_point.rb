class AddNameAndNumberToPoint < ActiveRecord::Migration
  def change
    add_column :points, :name, :string
    add_column :points, :number, :integer
  end
end
