class UserRidesController < ApplicationController

  expose(:ride) { Ride.find(params[:ride_id]) }
  expose(:user_ride) { ride.user_rides.build }

  def create
    self.user_ride.status = 'pending'
    self.user_ride.user = current_user

    if user_ride.save
      redirect_to ride_path(ride), notice: 'Request sent'
    else
      redirect_to rides_path, error: 'Request couldn\'t be created'
    end
  end

  private
    def user_ride_params
      params.require(:user_ride).permit(:status)
    end
end
