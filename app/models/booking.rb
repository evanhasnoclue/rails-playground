class Booking < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :booking_slots
  has_many :users, through: :joins
end
