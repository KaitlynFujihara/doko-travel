class WelcomeController < ApplicationController
before_action :authenticate_user!

  def index
  end

  def show
    render :show
  end
end
