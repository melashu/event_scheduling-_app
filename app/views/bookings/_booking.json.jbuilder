json.extract! booking, :id, :status, :first_name, :last_name, :email, :notes, :start_date, :end_date, :customer_paid, :booking_type_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
json.notes booking.notes.to_s
