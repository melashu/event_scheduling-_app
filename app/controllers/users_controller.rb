class UsersController < ApplicationController
  def show
    @user = User.find_by(booking_link: params[:booking_link])
  end

  def autocomplete
    render json: BookingType.search(params[:query], {
      fields: ["name^5", "location"],
      match: :word_start,
      limit: 10,
      load: false,
      misspellings: {below: 5}
    }).map(&:name)
  end

   def free_event
   term = params[:query]..present? ? params[:query] : '*'
   @free_events = BookingType.search(term, highlight: {tag: "<strong>"}, page: params[:page], per_page: 5, where: {payement_required: false}, order: {created_at: :desc})
  #  @free_events =  BookingType.paginate(page: params[:page]).where(payement_required: false).includes(:user).order(created_at: :desc) 
   end

end
