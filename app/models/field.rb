class Field < ApplicationRecord
  belongs_to :sport
  has_many :booking_slots
end
