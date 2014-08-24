class ChangeReviewedIdToRideIdInReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :reviewed_id
    add_column :reviews, :ride_id, :integer
  end
end
