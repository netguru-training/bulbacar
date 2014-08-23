class Point < ActiveRecord::Base
  belongs_to :route

  validates :name, presence: true
  validates :number, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

end
