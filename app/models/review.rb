class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: "User"
  belongs_to :reviewed, class_name: "User"
  RATING = [ 1, 2, 3, 4, 5 ]

  validates :rating, presence: true, inclusion: { in: RATING }
  validates :comment, presence: true
  validates :reviewer_id, presence: true
  validates :reviewed_id, presence: true
end
