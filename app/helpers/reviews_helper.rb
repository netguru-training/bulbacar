module ReviewsHelper
  def reviewed?(ride_id)
    get_review(ride_id)
  end
  
  def get_review(ride_id)
    Review.where(reviewer_id: current_user.id, ride_id: ride_id).first
  end
end
