class UsersController < ApplicationController
  def show
    @user = User.find_by(booking_link: params[:booking_link])
  end

   def free_event
    @free_events = BookingType.paginate(page: params[:page]).where(payement_required: false).includes(:user).order(created_at: :desc)
   end

end
