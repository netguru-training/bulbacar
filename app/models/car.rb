class Car < ActiveRecord::Base
  AVAILABLE_SEATS = [1, 2, 3, 4, 5, 6]

  belongs_to :owner, class_name: 'User'

  validates :brand, presence: true
  validates :model, presence: true
  validates :seats, presence: true, inclusion: { in: AVAILABLE_SEATS }
  
end
