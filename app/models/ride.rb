class Ride < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
 
  validates :departure_at, presence: true
  validates :description, presence: true 
 
end
