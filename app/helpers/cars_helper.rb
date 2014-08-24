module CarsHelper

  def car_name(car)
    return '' if car.nil?
    "#{car.brand} #{car.model}"
  end
end
