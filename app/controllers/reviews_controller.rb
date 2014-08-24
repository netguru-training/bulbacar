class ReviewsController < ApplicationController
  expose(:attended_rides) { current_user.attended_rides }
  expose(:review)

  def index
  end
  
  def new
  end
  
  def create
    self.review = Review.new(review_params)
    binding.pry
    if self.review.save
      redirect_to reviews_path
    else
      render action: 'new'
    end
  end

  def review_params
    params.require(:review).permit(:reviewer_id, :ride_id, :rating, :comment)
  end
  
  
end