class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :status, default: 0
      t.string :first_name
      t.string :last_name
      t.string :email
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :customer_paid, default: false
      t.references :booking_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
