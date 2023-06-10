class BookingType < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_rich_text :description

  validates :name, :location, :start_date, :end_date, :color, presence: true
end
