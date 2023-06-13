class BookingTypesController < ApplicationController
  before_action :set_booking_type, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /booking_types or /booking_types.json
  def index
    @booking_types = current_user.booking_types
  end

  # GET /booking_types/1 or /booking_types/1.json
  def show; end

  # GET /booking_types/new
  def new
    @booking_type = current_user.booking_types.new
  end

  # GET /booking_types/1/edit
  def edit; end

  # POST /booking_types or /booking_types.json
  def create
    @booking_type = current_user.booking_types.new(booking_type_params)
    # ids = current_user.booking_types.ids
    # users = Booking.where(booking_type_id: ids).distinct.pluck(:email, :first_name)
    users = current_user.booking_types.joins(:bookings).distinct.pluck(:email)

    respond_to do |format|
      if @booking_type.save
        users.each do |user|
          BookingTypeMailer.with(current_user: current_user, email: user[0], first_name: user[1], booking_type: @booking_type).notify.deliver_later
        end
        format.html { redirect_to booking_types_url, notice: 'Booking type was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_types/1 or /booking_types/1.json
  def update
    respond_to do |format|
      if @booking_type.update(booking_type_params)
        format.html { redirect_to root_url, notice: 'Booking type was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_types/1 or /booking_types/1.json
  def destroy
    @booking_type.destroy

    respond_to do |format|
      format.html { redirect_to booking_types_url, notice: 'Booking type was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking_type
    @booking_type = current_user.booking_types.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def booking_type_params
    params.require(:booking_type).permit(:name, :cover_photo, :location, :description, :color, :start_date, :end_date,
                                         :payement_required, :price)
  end
end
