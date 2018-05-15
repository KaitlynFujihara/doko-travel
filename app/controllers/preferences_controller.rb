class PreferencesController < ApplicationController
  def index
    @account = current_account
    @interests = Interest.all
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
       redirect_to account_preferences_path
    end
  end
  def preference_params
    params.require(:preference).permit(:length, :firsttime, :interest_id)
  end
end
