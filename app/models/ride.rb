class Ride < ActiveRecord::Base

  belongs_to :owner, class_name: "User"
  has_many :points
  has_many :user_rides

  accepts_nested_attributes_for :points, :reject_if => :all_blank, :allow_destroy => true

  validates :departure_at, presence: true
  validates :description, presence: true

  def active?
    Time.now < departure_at
  end

  def finish!
    self.finished = true
    self.save
  end

  def owned_by?(user)
    return false if user.nil?
    user.id == owner.id
  end

  def start_point
    points.where(number: 0).first
  end

  def end_point
    points.where(number: points.length - 1).first
  end

  def request_status(user)
    user.user_rides(user_id: user.id).try(:last).try(:status)
  end

  def seats_available
    return 0 unless owner.cars.any?
    owner.car.seats - user_rides.accepted.count
  end

end
