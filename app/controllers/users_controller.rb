class UsersController < ApplicationController

  expose(:user_rides) { current_user.rides }

  def rides
  end

end
