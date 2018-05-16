class PreferencesController < ApplicationController
  helper_method :tokyo_checker
  def index
    @account = current_account
    @preference = Preference.new
    @interests = Interest.all
    @cities = City.all
    @preferences = @account.preferences
  end

  def new
    @interests = Interest.all
    @account = current_account
    @preference = Preference.new
    respond_to do |format|
    format.html { render 'new.html.erb'}
    format.js { render 'index.js.erb' }
    end
  end

  def create
    @interests= Interest.all
    @account = current_account
  session[:user_id] = @account.id
     if defined?(session[:user_id])
       @preference = @account.preferences.new(preference_params)
       @preference.interest_ids = params[:preference][:interest_ids]
       @preference.save
    end
    @itinerary = @account.itinerary
    @length = @preference.length.to_i
    @firsttime = @preference.firsttime
    @account.city_checker(@length, @firsttime)
    redirect_to account_preferences_path
  end
  def preference_params
    params.require(:preference).permit(:length, :firsttime, :interest_id)
  end
end
