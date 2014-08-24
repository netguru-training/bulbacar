class Point < ActiveRecord::Base
  belongs_to :ride

  validates :name, :number, :latitude, :longitude, presence: true
  
  def self.save_points( points_hash, ride_id )
    sorted_points_hash = Hash[points_hash.sort]
    sorted_points_hash.each_with_index do | ( key, value ), index |
      point_number = point_number( key, index, points_hash.length )
      Point.create!( name: value[:name], latitude: value[:latitude], longitude: value[:longitude], ride_id: ride_id, number: point_number )
    end
  end
  
  def self.point_number( number, index, len )
    return 0 if number.to_i == 0
    return len-1 if number.to_i == 1
    index-1
  end

end
