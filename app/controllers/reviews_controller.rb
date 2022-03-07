class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.restaurant_id = params[:restaurant]
    @review.save
    # Need to add logic so the review saves for a specific restaurant's dish.
  end

  def update
    @review = Review.find
  end

  private

  def review_params
    params.require(:review).permit(:description, :authenticity, :value, :dish, :restaurant_id)
  end
end
