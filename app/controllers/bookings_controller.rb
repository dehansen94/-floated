class BookingsController < ApplicationController
  def new
  end

  def index
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @floatdevice = Floatdevice.find(params[:floatdevice_id])
    @booking.floatdevice = @floatdevice
    @booking.status = "pending"
    if @booking.save
      redirect_to bookings_path
    else
      render "floatdevices/show"
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to profile_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end

end
