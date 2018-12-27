class User < ApplicationRecord
  has_many :bookings
  has_many :bookings, through: :joins
end
