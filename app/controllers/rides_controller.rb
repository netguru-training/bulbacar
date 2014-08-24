class RidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  expose(:requests) { ride.user_rides }
  expose(:rides) 
  expose(:ride, attributes: :ride_params)
  expose(:starting_point, model: :point)
  expose(:ending_point, model: :point)

  def index
  end
  
  def new
  end
  
  def create
    points_hash = params[:ride].delete(:points_attributes)
    if ride.save
      Point.save_points(points_hash, Ride.last.id)
      redirect_to root_path
    else
      render action: 'new'
    end
  end
  
  def ride_params
      params.require(:ride).permit(:departure_at, :description, :owner_id, points_attributes: [:id, :name, :latitude, :longitude, :_destroy])
  end

end
