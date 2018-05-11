class InterestsController < ApplicationController
  before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user && current_user.admin?
    end
  def index
    @interests = Interest.all
  end
  def new
    @interest= Interest.new
    @interests = Interest.all

  end
  def create
   @interest = Interest.new(interest_params)
   flash[:notice] = "#{@interest.name} was added to the database!"
   if @interest.save
     redirect_to  welcome_index_path
   else
     render :new
   end
 end
 def destroy
   @interest = Interest.find(params[:id])
   @interest.destroy
    flash[:notice] = "#{@interest.name} was deleted."
   redirect_to cities_path
 end
 def show
   @interest = Interest.find(params[:id])
   render :show
 end
 private
 def interest_params
   params.require(:interest).permit(:interest_title)
 end
end
