class Car < ActiveRecord::Base
  belongs_to :user

  validates :brand, presence: true
  validates :model, presence: true
  validates :seats, presence: true, numericality: { greater_than: 0 }

end