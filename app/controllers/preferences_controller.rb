class PreferencesController < ApplicationController

  def index
    @account = current_account
    @preferences = Preference.all
  end

  def new
    @preference = Preference.new
    @account = current_account
    @interests = Interest.all
end

  def create
    @interests= Interest.all
    @account = current_account
    session[:user_id] = @account.id
     if defined?(session[:user_id])
       @preference = Preference.new(preference_params)
       @preference.account_id = @account.id
       @preference.interest_ids = params[:preference][:interest_ids]
      @preference.save!
      redirect_to account_preference_path(@account, @preference)
    end
  end
  def show
    @account= current_account
    @preference = Preference.find(params[:id])
  end
  def edit
    @account= current_account
    @preference = Preference.find(params[:id])
   end
   def update
     @account= current_account
     @preference = Preference.find(params[:id])
     @preference.interest_ids = params[:preference][:interest_ids]
     if @preference.update(preference_params)
       redirect_to account_preference_path
     else
       render :edit
    end
  end
  def preference_params
    params.require(:preference).permit(:length, :firsttime, :interest_id)
  end
end
