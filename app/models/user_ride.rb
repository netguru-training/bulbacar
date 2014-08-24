class UserRide < ActiveRecord::Base
  STATUS = ['accepted', 'pending', 'rejected', 'finished']

  belongs_to :ride
  belongs_to :user

  validates :status, inclusion: { in: STATUS }

  scope :accepted, -> { where(status: 'accepted') }

  def self.alreadyrequested?(user_id, ride_id)
    UserRide.exists?(user_id: user_id, ride_id: ride_id)
  end

end
