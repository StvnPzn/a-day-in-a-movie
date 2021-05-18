class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    date_format
    @booking = Booking.new(booking_params)
      # créer un statut par défaut : pending

      # Date demandée

      # Date de réservation de

      # methode qui vérifie à partir de l'objet, la disponibilité pour cette date
  end

   # UPDATE => le producer change le statut du booking

  private
  def booking_params
    params.require(:booking).permit(:date, :status)
  end

  def date_format
    date_string = "#{params["booking"]["date(1i)"]}-#{params["booking"]["date(2i)"]}-#{params["booking"]["date(3i)"]}"
  end

end
