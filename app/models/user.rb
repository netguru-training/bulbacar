class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cars, foreign_key: 'owner_id'
  has_many :user_rides
  
  validates :firstname, :lastname, presence: true
  
  def cars?
    cars.length >= 1
  end
end
