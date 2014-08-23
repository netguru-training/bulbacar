class Route < ActiveRecord::Base
  belongs_to :user
  has_many :points

  validates :date, presence: true
  validates :description, presence: true

end
