json.extract! booking_type, :id, :name, :location, :description, :color, :duration, :payement_required, :price, :user_id, :booking_ling, :created_at, :updated_at
json.url booking_type_url(booking_type, format: :json)
json.description booking_type.description.to_s
