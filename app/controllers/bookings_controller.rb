class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @floatdevice = Floatdevice.find(params[:floatdevice_id])
  end

  def index
    @bookings = current_user.bookings
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @floatdevice = Floatdevice.find(params[:floatdevice_id])
    @booking.floatdevice = @floatdevice
    @booking.status = "pending"
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
