class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.date = date_format
    @booking.user_id = current_user.id
    @booking.prop_id = params[:prop_id]
    @booking.pending!
    if available?
      @booking.save
      redirect_to bookings_path, alert: "Réservation envoyée !"
    else
      redirect_to prop_path(params[:prop_id])
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :status)
  end

  def date_format
    Date.new(params["booking"]["date(1i)"].to_i,params["booking"]["date(2i)"].to_i,params["booking"]["date(3i)"].to_i)
  end

  def available?
     Booking.where(["date = ? and status = ? and prop_id = ?", "#{@booking.date}", 1, "#{params[:prop_id]}"]).empty?
  end

end
