class BookingTypeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_type_mailer.notify.subject
  #
  def notify
    @current_user = params[:current_user]
    email = params[:email]
    @first_name = params[:first_name]
    @booking_type = params[:booking_type]
    mail to: email, from: 'notification@ketero.com', subject: "New event hosted by #{@current_user.first_name}"
  end
end
