class Api::V1::BookingsController < Api::V1::BaseController
  def create
    @booking = Booking.new(params_booking)
    if @booking.save
      render @booking.to_json
    else
      render_error
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(params_booking)
      render @booking.to_json
    else
      render_error
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @message.destroy
    head :no_content
  end


  private

  def params_booking
    params.require(:booking).permit(:user_id,:hours_lasting,:price_total,:pay_status)
  end
end
