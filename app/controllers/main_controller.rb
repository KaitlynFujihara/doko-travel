class MainController < ApplicationController
  before_action :authenticate_user!

  def index
    @account = current_account
    respond_to do |format|
    format.html { render 'index.html.erb'}
    format.js { render 'index.js.erb' }
    end
  end
  def show
    render :show
  end
end
