class BookingsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bookings_mailer.welcome_mail.subject
  #
  def welcome_mail
    @booking = params[:booking]
    @type = params[:type]
    mail(to: @booking.email, from: 'no-reply@ketero.com', reply_to: @type.user.email, subject: "You are booking #{@type.name} event")
  end

  def mail_to_host
    @type = params[:type]
    @booking = params[:booking]
    mail(to: @type.user.email, from: 'no-reply@ketero.com', reply_to: @booking.email, subject: "#{@booking.first_name} #{@booking.last_name} book your #{@type.name} event")
  end

  def approval_mail

  end
end
