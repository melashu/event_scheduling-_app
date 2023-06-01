class HomesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def index
    
  end

  def dashboard
    @booking_type = current_user.booking_types
    @bookings = Booking.where(booking_type: current_user.booking_type_ids)
  end
end
