class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @floatdevice = Floatdevice.find(params[:floatdevice_id])
    @booking.floatdevice = @floatdevice
    @booking.status = "pending"
    if @booking.save
      redirect_to root_path
    else
      render "floatdevices/show"
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end

end
