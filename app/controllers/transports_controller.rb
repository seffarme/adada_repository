class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    if params[:category]
      @transports = Transport.where('category=?', params[:category])

    elsif params[:query].present?

      if @transports = Transport.search_by_name_description_city_country(params[:query]) == []
        @transports = Transport.order(:price)
      else
        @transports = Transport.search_by_name_description_city_country(params[:query])
      end

    else
      @transports = Transport.order(:price)
    end

    # # Geocoding
    @markers = @transports.geocoded.map do |transport|
      {
        lat: transport.latitude,
        lng: transport.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { transport: transport })
      }
    end
  end

  def show
    @transport = Transport.find(params[:id])
    @bookings = Booking.where(transport_id: @transport.id)
    @booking = Booking.new
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to: booking.end_date
      }
    end
    @nber_of_days = @booking.end_date
    puts @nber_of_days
    @available = true
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

  def random
    @id = Transport.all.sample.id
    @transport = Transport.find(@id)
    @bookings = Booking.where(transport_id: @id)
    @booking = Booking.new
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to: booking.end_date
      }
    end

    @available = true
  end

  private

  def transport_params
    params.require(:transport).permit(:name, :description, :category, :address, :price, :photo)
  end
end
