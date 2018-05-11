class InterestsController < ApplicationController
  def new
    @city = City.find(params[:cities_id])
    @interest = @city.interests.new
  end

  def create
    @city = City.find(params[:interest][:id])
    @interest = @city.interests.create(params[:interest])
      if @interest.save
      flash[:notice] = "Interest successfully added!"
      respond_to do |format|
        format.html { redirect_to @city) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @city = City.find(params[:cities_id])
    @interest = Interest.find(params[:id])
  end

  def update
    @city = City.find(params[:cities_id])
    @interest = Interest.find(params[:id])
    if @interest.update(interest_params)
      flash[:notice] = "Interest successfully updated!"
      respond_to do |format|
        format.html { redirect_to city_path(@interest.city) }
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
    redirect_to city_path(@interest.city)
  end

  private
  def interest_params
    params.require(:interest).permit(:interest_title, :cities_id)
  end

end
