class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
		@transports = Transport.order(:price)
  end

  def show
    @transport = Transport.find(params[:id])
    @bookings       = Booking.where(transport_id: @transport.id)
    @booking = Booking.new
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end
    # @transport.bookings = @booking
    @available = true
    # @available = @transport.bookings.empty?
  end

  def new
    @transport = Transport.new # needed to instantiate the form_for
  end

  def create
    @transport = Transport.new(transport_params)

    @transport.owner = current_user
    @transport.save

    # no need for app/views/transports/create.html.erb
    redirect_to transport_path(@transport)

  end

  def destroy
    @transport = Transport.find(params[:id])
    @transport.destroy
    redirect_to transports_path
  end
  private

  def transport_params
    params.require(:transport).permit(:name, :description, :category, :price, :photo)
  end

end
