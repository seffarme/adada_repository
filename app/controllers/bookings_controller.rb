class BookingsController < ApplicationController
  def new
    @bookings = Booking.all
  end

  def create
    @transport = Transport.find(params[:transport_id])
    @booking = Booking.new(booking_params)
    @booking.transport = @transport
    @user = current_user
    @booking.user = @user
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
