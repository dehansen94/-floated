class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @floatdevice = Floatdevice.find(params[:floatdevice_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @floatdevice = Floatdevice.find(params[:floatdevice_id])
    @booking.floatdevice = @floatdevice
    if @booking.save
      redirect_to floatdevice_path(@floatdevice)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

end
