class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @cities = City.all
    render :index
  end

  def show
    render :show
  end
end
