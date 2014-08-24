class RidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  expose(:requests) { ride.user_rides }
  expose(:rides) { Ride.order("departure_at ASC") } 
  expose(:ride, attributes: :ride_params)
  expose(:starting_point, model: :point)
  expose(:ending_point, model: :point)

  helper CarsHelper

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

  def finish
    if owner?
      ride.finish!
      redirect_to ride_path(ride)
    else
      flash[:error] = "You don't have authorization to finish this ride"
      redirect_to ride_path(ride)
    end
  end

  private

  def owner?
    current_user == ride.owner
  end

end
