class WelcomeController < ApplicationController
before_action :authenticate_user!

  def index
    @cities = City.all
  end

  def show
    render :show
  end
end
