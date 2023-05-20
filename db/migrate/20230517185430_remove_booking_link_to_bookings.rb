class RemoveBookingLinkToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :booking_types, :booking_link
  end
end
