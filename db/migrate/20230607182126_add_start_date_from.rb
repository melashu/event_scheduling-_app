class AddStartDateFrom < ActiveRecord::Migration[7.0]
  def change
    add_column :booking_types, :start_date, :datetime
    add_column :booking_types, :end_date, :datetime
  end
end
