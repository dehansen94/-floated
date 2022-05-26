class PagesController < ApplicationController
  def home
  end

  def profile
    @user = current_user
    @floatdevices = current_user.floatdevices
    @bookings = current_user.bookings
    @booking_requests = @floatdevices.includes(:bookings).map(&:bookings).flatten
  end
end
