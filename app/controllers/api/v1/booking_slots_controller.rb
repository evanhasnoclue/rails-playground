class Api::V1::BookingSlotsController < Api::V1::BaseController
  def update
    @booking_slot = Booking_slot.find(params[:id])
    if @booking_slot.update(params_booking_slot)
      @booking_slot.update(status: "Booked")
      render json: @booking_slot.to_json
    else
      render_error
    end
  end


end
