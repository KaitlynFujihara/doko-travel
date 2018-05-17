class ItinerariesController < ApplicationController
  before_action :authenticate_user!

  def index
    @account = current_account
    @itineraries = Itinerary.all
    @preference= Preference.first
    @cities = City.all
  end

  def new
    @itinerary = Itinerary.new
    @interests = Interest.all
    @account = current_account
    @cities = Itinerary.all
    @preference= Preference.first
  end

  def create
    @itineraries = Itinerary.all
    @interest = Interest.all
    @account = current_account
    session[:user_id] = @account.id
     if defined?(session[:user_id])
       @itinerary = Itinerary.new(itinerary_params)
       @itinerary.account_id = @account.id
       @itinerary.interest_ids = params[:itinerary][:interest_ids]
       @itinerary.city_ids = params[:itinerary][:city_ids]
       itinerary_id =  @itinerary.id
       @itinerary.save
       redirect_to itineraries_path
    else
      render :new
   end
 end

 def edit
   @preference= Preference.first
   @itinerary= Itinerary.find(params[:id])
   @account = current_account
 end

 def update
   @itinerary= Itinerary.find(params[:id])
   @itinerary.interest_ids = params[:itinerary][:interest_ids]
   @itinerary.city_ids = params[:itinerary][:city_ids]
   if @itinerary.update(itinerary_params)
     flash[:notice] = "#{@itinerary.title} was updated!"
     redirect_to itineraries_path
   else
     render :edit
  end
end

 def destroy
   @itinerary = Itinerary.find(params[:id])
   @itinerary.destroy
    flash[:notice] = "#{@itinerary.title} was deleted."
   redirect_to itineraries_path
 end

 def show
   @preference= Preference.first
   @itinerary = Itinerary.find(params[:id])
   @interests = Interest.all
   @cities = City.all
   @account = current_account
   @rating = @itinerary.ratings.new :value => params[:value]
 end

private
 def itinerary_params
   params.require(:itinerary).permit(:title, :creator, :description, :length, :interest_id, :city_id)
 end
end
