class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    raise
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
