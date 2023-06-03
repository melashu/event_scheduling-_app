class Booking < ApplicationRecord
  belongs_to :booking_type
  has_rich_text :notes
  validates :first_name, :last_name, :email, :start_date, :end_date, :status, presence: true
  enum status: { pending: 0, approved: 1, unapproved: 2 }
end
