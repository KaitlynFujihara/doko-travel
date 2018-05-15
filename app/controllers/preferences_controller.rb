class PreferencesController < ApplicationController
  def index
    @preferences = current_account.preferences
    city = params[:name]
    @cities = Cities.search(name)
    json_response(@cities)
  end
  def new
    @account = current_account
    @preference = Preference.new
    respond_to do |format|
    format.html { render 'new.html.erb'}
    format.js { render 'index.js.erb' }
    end
  end
  def create
    @account = current_account
     if defined?(session[:user_id])
       @preference = @account.preferences.new(preference_params)
     else
      flash[:notice] = "Post unsuccessful! Please sign in first!"
    end
    render :new
  end
  def preference_params
    params.require(:preference).permit(:length, :interest, :mustdos)
  end
end
