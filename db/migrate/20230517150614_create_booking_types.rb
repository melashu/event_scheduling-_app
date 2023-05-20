class CreateBookingTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_types do |t|
      t.string :name
      t.string :location
      t.string :color
      t.integer :duration
      t.boolean :payement_required
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :booking_link

      t.timestamps
    end
    add_index :booking_types, :booking_link, unique: true
  end
end
