class HomeController < ApplicationController
  def index
    @account = current_account
  end
  def show
    render :show
  end
end
