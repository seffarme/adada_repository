class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
		if params[:category]
			@transports = Transport.where('category=?', params[:category])
			# do some stuf
		else
			@transports = Transport.order(:price)
		end
		# raise
    
    # Geocoding
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
