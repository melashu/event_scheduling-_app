class RemoveDuriationFromBookingTypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :booking_types, :duration

  end
end
