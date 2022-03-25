class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.restaurant_id = params[:restaurant]
    if @review.save
      redirect_to restaurants_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  def update
    @review = Review.find
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant])
  end

  private

  def review_params
    params.require(:review).permit(:description, :authenticity, :value, :dish, :restaurant_id)
  end
end
