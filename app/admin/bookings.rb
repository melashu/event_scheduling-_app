ActiveAdmin.register Booking do


  permit_params :status, :first_name, :last_name, :email, :customer_paid, :booking_type_id
  
  filter :booking_type_id, as: :search_select_filter, url: proc { admin_booking_types_path },
                      fields: %i[name], method_model: BookingType, display_name: 'name', minimum_input_length: 2

  filter :status, as: :select, collection: %w[pending approved rejected]
  filter :customer_paid, as: :check_boxes
  filter :created_at, as: :date_time_picker_filter
  
  batch_action "Approve for ", method: :put, confirm: "Are you sure?" do |ids|
    Booking.where(id: ids).update(status: 1)
    redirect_to admin_bookings_path, notice: 'Successfuly updated'
  end
  batch_action "Reject for ", method: :put, confirm: "Are you sure?" do |ids|
    Booking.where(id: ids).update(status: 2)
    redirect_to admin_bookings_path, notice: 'Successfuly updated'

  end

  index do
    selectable_column
    tag_column :status, interactive: true
    column :first_name
    column :last_name
    bool_column :customer_paid
    column :email
    column "Booking Type" do |booking|
      link_to booking.booking_type.name, admin_booking_type_path(booking.booking_type_id)
    end
    

    actions
  end
  
end
