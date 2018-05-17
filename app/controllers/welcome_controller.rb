class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @cities = City.all
    @account=current_account
    render :index
  end

  def show
    render :show
  end
end
