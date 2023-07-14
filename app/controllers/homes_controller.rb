class HomesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

   def index
  #  @paid_events  =  BookingType.paginate(page: params[:page]).includes(:user).order(created_at: :desc)
   term = params[:query]..present? ? params[:query] : '*'
   @paid_events = BookingType.search(term, highlight: {tag: "<strong>"}, page: params[:page], per_page: 5, order: {created_at: :desc})
  #
  end

 

  def dashboard
    
    @booking_type = current_user.booking_types
    @bookings = Booking.where(booking_type: current_user.booking_type_ids)
  end
end
