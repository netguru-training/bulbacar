module CarsHelper

  def car_name(car)
    return '' if car.nil?
    "#{car.brand} #{car.model}"
  end

  def car_free_seats(car)
    car.seats - 1
  end
end
