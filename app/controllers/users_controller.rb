class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    # @user = current_user
    @user = User.find(params[:id])
  end

end
