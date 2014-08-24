class Ride < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :points
  has_many :user_rides

  validates :departure_at, presence: true
  validates :description, presence: true

  def active?
    Time.now < departure_at
  end

  accepts_nested_attributes_for :points, :reject_if => :all_blank, :allow_destroy => true
  validates :departure_at, presence: true
  validates :description, presence: true 
   
end
