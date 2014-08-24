class CarsController < ApplicationController

  expose(:cars) { current_user.cars }
  expose(:car)


  def create
    self.car = Car.new(car_params)

    if self.car.save
      current_user.cars << car
      flash[:success] = 'Car successfully added!'
      redirect_to user_cars_path(current_user)
    else
      render action: 'new'
      flash[:error] = "Couldn't create the car!"
    end
  end

  def update
    if self.car.update(car_params)
      flash[:success] = 'Car successfully updated!'
      redirect_to user_cars_path(current_user)
    else
      render action: 'edit'
      flash[:error] = "Couldn't update the car!"
    end
  end

  def new
  end

  def index
  end

  def destroy
    if self.car.destroy
      flash[:success] = 'Car deleted!'
      redirect_to user_cars_path(current_user)
    else
      render action: 'index'
      flash[:error] = "Couldn't destroy the car!"
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :seats)
  end

end
