class RidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  expose(:rides) 

  def index
  end

end
