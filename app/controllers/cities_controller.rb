class CitiesController < ApplicationController
  before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user && current_user.admin?
    end
  def index
    @cities = City.all
  end
  def new
    @city = City.new
    @cities = City.all
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
 # def edit
 #   @product= Product.find(params[:id])
 #   render :edit
 # end
 # def update
 #   @product= Product.find(params[:id])
 #   if @product.update(product_params)
 #     flash[:notice] = "#{@product.name} was updated!"
 #     redirect_to products_path
 #   else
 #     render :edit
 #     end
 #   end
 # def destroy
 #   @product = Product.find(params[:id])
 #   @product.destroy
 #    flash[:notice] = "#{@product.name} was deleted."
 #   redirect_to products_path
 # end
 # def show
 #   @product = Product.find(params[:id])
 #   render :show
 # end
 private
 def city_params
   params.require(:city).permit(:name, :description, :length)
 end
end
