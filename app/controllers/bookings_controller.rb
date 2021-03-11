class BookingsController < ApplicationController
  def new
    @bookings = Booking.all
  end

  def create
    # Get transport
    @transport = Transport.find(params[:transport_id])

    # Create booking
    @booking = Booking.new(booking_params)

    # Add transport id to booking
    @booking.transport = @transport

    # Add user id to booking
    @user = current_user
    @booking.user = @user

    # Save booking
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
