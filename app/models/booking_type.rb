class BookingType < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_rich_text :description

  validates :name, :location, :color, :duration, presence: true
end
