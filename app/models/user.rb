class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :friend, dependent: :destroy
  has_many :bookings
  has_many :friends, through: :bookings

  def full_name
    return "#{first_name} #{last_name}"
  end
end
