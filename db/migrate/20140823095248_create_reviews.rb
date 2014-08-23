class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.integer :reviewer_id
      t.integer :reviewed_id

      t.timestamps
    end
  end
end
