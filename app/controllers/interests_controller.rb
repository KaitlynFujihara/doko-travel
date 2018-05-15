class InterestsController < ApplicationController
  before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user && current_user.admin?
    end
  def new
    @interest = Interest.new
    @interests = Interest.all
  end

  def create
    @interest = Interest.new(interest_params)
    flash[:notice] = "Interest successfully added!"
    if @interest.save
      respond_to do |format|
        format.html
        format.js { render :file => "create.js.erb" }
        redirect_to new_interest_path
      end
    else
      redirect_to new_interest_path
    end
  end

  def edit
    @interest = Interest.find(params[:id])
  end

  def update
    @interest = Interest.find(params[:id])
    if @interest.update(interest_params)
      flash[:notice] = "Interest successfully updated!"
      respond_to do |format|
        format.html
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    flash[:notice] = "Interest successfully deleted."
    redirect_to new_interest_path
  end

  private
  def interest_params
    params.require(:interest).permit(:interest_title, :city_id, :preference_id)
  end
end
