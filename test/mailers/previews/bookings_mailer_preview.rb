# Preview all emails at http://localhost:3000/rails/mailers/bookings_mailer
class BookingsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/bookings_mailer/welcome_mail
  def welcome_mail
    BookingsMailer.with(booking: Booking.first, type: Booking.first.booking_type).welcome_mail
  end

  def mail_to_host
    BookingsMailer.with(booking: Booking.first, type: Booking.first.booking_type).mail_to_host
  end

end
