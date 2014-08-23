class CarsController < ApplicationController

  expose(:user)
  expose(:cars)
  expose(:car)



  # def create
  #   self.car = Car.new(car_params)
  #
  #   if car.save
  #     redirect_to user_cars_url(user)
  #   else
  #     render action: 'new'
  #   end
  # end
  #
  # def update
  #   if self.car.update(car_params)
  #     redirect_to user_cars_url(user)
  #   else
  #     render action: 'edit'
  #   end
  # end

  def index
  end

  # def destroy
  #   if self.car.destroy
  #
  # private
  #
  # def car_params
  #   params.require(:car).permit(:brand, :model, :seats)
  # end

end
