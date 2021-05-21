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
      redirect_to bookings_path
    else
      puts "not working"
      redirect_to prop_path(params[:prop_id])
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @status =
    @booking.update(booking_params)
  end
    # @booking.status =


      # créer un statut par défaut : pending

      # Date demandée

      # Date de réservation de

      # methode qui vérifie à partir de l'objet, la disponibilité pour cette date

   # UPDATE => le producer change le statut du booking

  private
  def booking_params
    params.require(:booking).permit(:date, :status)
  end

  # def check_availability
    #if existe un booking rattache a l'objet dont la date est = a la date de dde de resa
    # et que status == 1 (accepted) renvoit false
  # end
  # end

  def date_format
    Date.new(params["booking"]["date(1i)"].to_i,params["booking"]["date(2i)"].to_i,params["booking"]["date(3i)"].to_i)
  end

  def available?
     Booking.where(["date = ? and status = ? and prop_id = ?", "#{@booking.date}", 1, "#{params[:prop_id]}"]).empty?
  end

end
