class UsersController < ApplicationController
  expose(:user_rides) { current_user.rides }

  def index
  end

  def rides
  end
end