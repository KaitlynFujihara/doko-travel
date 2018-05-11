class CitiesController < ApplicationController
  before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user && current_user.admin?
    end
  def index
    @cities = City.all
    @interests = Interest.all
  end
  def new
    @city = City.new
    @cities = City.all
    @interest= Interest.new
    @interests = Interest.all
  end
  def create
   @city = City.new(city_params)
   flash[:notice] = "#{@city.name} was added to the database!"
   if @city.save
     redirect_to  welcome_index_path
   else
     render :new
   end
 end
 def edit
   @city= City.find(params[:id])
   render :edit
 end
 def update
   @city= City.find(params[:id])
   if @city.update(city_params)
     flash[:notice] = "#{@city.name} was updated!"
     redirect_to cities_path
   else
     render :edit
     end
   end
 def destroy
   @city = City.find(params[:id])
   @city.destroy
    flash[:notice] = "#{@city.name} was deleted."
   redirect_to cities_path
 end
 def show
   @city = City.find(params[:id])
   render :show
 end
 private
 def city_params
   params.require(:city).permit(:name, :description, :length)
 end
end
