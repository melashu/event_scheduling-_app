class Booking < ApplicationRecord
  belongs_to :booking_type
  has_rich_text :notes
end
