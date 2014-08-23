class Request < ActiveRecord::Base
  STATUS = ['accepted', 'pending', 'rejected']

  belongs_to :user
  belongs_to :route

  validates status, inclusion: { in: STATUS }
end
