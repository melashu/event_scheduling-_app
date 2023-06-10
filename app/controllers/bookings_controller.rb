class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  # GET /bookings or /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1 or /bookings/1.json
  def show; end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @booking_type = BookingType.find_by(id: params[:booking_type_id])
  end

  # GET /bookings/1/edit
  def edit
    @booking_type = Booking.find_by(id: params[:id]).booking_type
  end

  # POST /bookings or /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @booking_type = BookingType.find_by(id: params[:booking][:booking_type_id])
    respond_to do |format|
      if @booking.save
        BookingsMailer.with(booking: @booking, type: @booking_type).welcome_mail.deliver_later
        BookingsMailer.with(type: @booking_type, booking: @booking).mail_to_host.deliver_later
        @booking.approved! unless @booking_type.payement_required?
        format.html { redirect_to booking_url(@booking), notice: 'Booking was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy_event
    @booking =  Booking.find_by(id: params[:id])
  end

  def cancel_event
    @booking =  Booking.find_by(id: params[:id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to booking_url(@booking), notice: 'Event successfully destroyed.' }
    end
  end

  # PATCH/PUT /bookings/1 or /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to booking_url(@booking), notice: 'Booking was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to booking_url(@booking), notice: 'Event successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking).permit(:booking_type_id, :first_name, :last_name, :email, :notes, :start_date, :end_date)
  end
end
