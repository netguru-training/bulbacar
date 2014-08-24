class RidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  expose(:rides)
  expose(:ride)

  def index
  end
  
  def new
  end

end
