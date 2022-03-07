class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    raise
    # Need to add logic so the review saves for a specific restaurant's dish.
    @review.save
    redirect_to restaurants_path
  end

  def update
    @review = Review.find
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
