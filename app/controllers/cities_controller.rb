class CitiesController < ApplicationController
  before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user && current_user.admin?
    end
  def index
    @cities = City.all
  end
  def new
  @city = City.new
  @cities = City.all
end
end
