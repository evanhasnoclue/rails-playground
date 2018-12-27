class BookingSlot < ApplicationRecord
  belongs_to :field
  belongs_to :booking
end
