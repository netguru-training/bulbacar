class UserRidesController < ApplicationController

  expose(:ride) { Ride.find(params[:ride_id]) }
  expose(:user_ride) { ride.user_rides.build }

  def create
    if ride.owner = current_user
       redirect_to rides_path, error: 'You can\'t request for your own ride!'
    else
      self.user_ride.status = 'pending'
      self.user_ride.user = current_user

      if user_ride.save
        flash[:success] = 'Request sent'
        redirect_to ride_path(ride)
      else
        redirect_to rides_path, error: "Request couldn't be created"
      end
    end
  end

  def accept
    self.user_ride = UserRide.find(params[:id])
    self.user_ride.status = 'accepted'

    if user_ride.save
      flash[:success] = 'You have accepted that request.'
      redirect_to ride_path(ride)
    else
      redirect_to ride_path(ride), error: 'Could not change the status.'
    end
  end

  def reject
    self.user_ride = UserRide.find(params[:id])
    self.user_ride.status = 'rejected'
    
    self.user_ride.user = user_ride.user
    if user_ride.save
      flash[:success] = 'You have rejected that status'
      redirect_to ride_path(ride)
    else
      redirect_to ride_path(ride), error: 'Could not change the status.'
    end
  end

  private
    def user_ride_params
      params.require(:user_ride).permit(:status)
    end
end
