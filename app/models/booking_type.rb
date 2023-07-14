class BookingType < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_rich_text :description
  has_one_attached :cover_photo
  self.per_page = 4
  searchkick highlight: [:name]
  scope :search_import, -> { includes(:users) }

  validates :name, :location, :color, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }, if: :payement_required?
  validates :start_date, comparison: { less_than: :end_date }
  validates :start_date, :end_date, comparison: {greater_than_or_equal_to: DateTime.now}


end
