class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @transports = Transport.all
  end

  def show
    @transport = Transport.find(params[:id])
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

    # @review = Review.new(review_params)
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review.restaurant = @restaurant
    # if @review.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render :new
    # end

  end

  private

  def transport_params
    params.require(:transport).permit(:name, :description, :category, :price, :photo)
  end

end
