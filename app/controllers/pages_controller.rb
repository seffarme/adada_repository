class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Render the views/layouts/spec_home.html.erb
    render layout: "spec_home"
  end
end
