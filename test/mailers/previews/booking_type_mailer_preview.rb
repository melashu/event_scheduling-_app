# Preview all emails at http://localhost:3000/rails/mailers/booking_type_mailer
class BookingTypeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_type_mailer/notify
  def notify
    BookingTypeMailer.with(current_user:User.first, email: 'meshu.ama@gmail.com', first_name: 'Melashu Amare', booking_type: User.first.booking_types[0]).notify
  end

end
