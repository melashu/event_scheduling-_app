ActiveAdmin.register User do
 includes :booking_types

 menu label: "Clients"
  permit_params :email, :first_name, :last_name, :admin, :booking_link

   member_action "booking_types", method: :get do
    @booking_types = resource.booking_types
   end

   
   filter :booking_types_id, as: :search_select_filter, url: proc { admin_booking_types_path },
                      fields: [:name, :id], display_name: 'booking_types', minimum_input_length: 2,
                      order_by: 'id_asc'
   filter :first_name
   filter :last_name
          

  index title: "None Admin User" do
     selectable_column
     column "Full Name" do |user|
      user.name.full
     end
     column :email
     column :booking_link
     column "Booking Types" do |user|
      link_to "Avaliable Booking type", booking_types_admin_user_path(user)
     end
     column "Booking" do |user|
      link_to "Bookings ", booking_types_admin_user_path(user)
     end
 actions
  end

  form title: "New Client Registration" do |form|
    form.inputs "Register new user" do
    form.input :first_name
    form.input :last_name
    form.input :email
    form.input :booking_link
    form.input :password
    form.input :password_confirmation


    end
  end
end
