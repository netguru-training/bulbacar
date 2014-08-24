class ReviewsController < ApplicationController
  expose(:attended_rides) { current_user.attended_rides }

  def index
  end

end