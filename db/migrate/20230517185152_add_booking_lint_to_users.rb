class AddBookingLintToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :booking_link, :string
  end
end
