module RidesHelper
  def start_point(points)
    points.where(number: 0).first
  end
  
  def end_point(points)
    points.where(number: points.length-1).first
  end
end
