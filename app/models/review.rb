class Review < ActiveRecord::Base
  RATING = [1, 2, 3, 4, 5]

  belongs_to :reviewer, class_name: "User"
  belongs_to :ride
  
  validates :rating, presence: true, inclusion: { in: RATING }
  validates :comment, presence: true
  validates :reviewer_id, presence: true
end
