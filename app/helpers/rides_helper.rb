module RidesHelper
  def start_point(points)
    points.where(number: 0).first
  end
  
  def end_point(points)
    points.where(number: points.length-1).first
  end
  
  def rating_average(ride_id)
    sum = 0
    Review.where(ride_id: ride_id).each_with_index do |rev|
      sum = sum + rev.rating
    end
    return sum / Review.where(ride_id: ride_id).length unless Review.where(ride_id: ride_id).length == 0
    'No reviews yet'
  end
end
