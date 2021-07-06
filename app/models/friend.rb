class Friend < ApplicationRecord
  # include CloudinaryHelper
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
