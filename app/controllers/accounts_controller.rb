class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @account = current_account
    @cities = City.all
    @interests = Interest.all
    @preference.account_id= @account.id
  end
def show
  @account = current_account
  @cities = City.all
  @interests = Interest.all
  @preference = Preference.find(params[:id])
end
end
