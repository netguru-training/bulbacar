class UserRide < ActiveRecord::Base
  STATUS = ['accepted', 'pending', 'rejected', 'finished']
 
  belongs_to :ride
  belongs_to :user
 
  validates :status, presence: true, inclusion: { in: STATUS }
end
