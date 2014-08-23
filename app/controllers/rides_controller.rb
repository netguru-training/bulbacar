class RidesController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :edit, :update, :create]

  expose(:rides)

  def index
  end

end
