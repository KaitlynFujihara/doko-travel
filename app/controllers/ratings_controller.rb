class RatingsController < ApplicationController
  before_filter :set_itinerary

  def create
    @rating = @itinerary.ratings.new :value => params[:value]
    if @rating.save
      redirect_to itinerary_ratings_path(@itinerary), :notice => "Rating successful."
    else
      redirect_to itinerary_ratings_path(@itinerary), :notice => "Something went wrong."
    end
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update_attribute :value += 1
  end

  private
    def set_itinerary
      @itinerary = Itinerary.find(parms[:itinerary_id])
    end
end
