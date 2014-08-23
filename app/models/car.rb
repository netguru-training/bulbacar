class Car < ActiveRecord::Base
  belongs_to :user
  AVAILABLE_SEATS = [ 1, 2, 3, 4, 5, 6 ]

  validates :brand, presence: true
  validates :model, presence: true
  validates :seats, presence: true, inclusion: { in: AVAILABLE_SEATS }

end