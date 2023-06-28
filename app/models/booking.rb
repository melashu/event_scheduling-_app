class Booking < ApplicationRecord
  belongs_to :booking_type
  has_rich_text :notes
  validates :first_name, :last_name, :email, presence: true
  enum status: { pending: 0, approved: 1, rejected: 2 }
end
