class Ride < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :points
 
  validates :departure_at, presence: true
  validates :description, presence: true 
 
end
