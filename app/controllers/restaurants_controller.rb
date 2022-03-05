class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @restaurants = Restaurant.all
    @dishrestaurants = DishRestaurant.all
    # !! THIS LOGIC MUST BE CHANGED ONCE WE HAVE A LINKED RESTAURANTS_DISH FROM THE JOIN TABLE !!
    if params[:dish].present?
      @restaurants = Restaurant.all.where(id: params[:dish])
    end
    # !! THIS LOGIC MUST BE CHANGED ONCE WE HAVE A LINKED RESTAURANTS_DISH FROM THE JOIN TABLE !!

    # once we bring in location we can add addiitonal logic, don't know if this make sense, just brainstorming:
    # if params[:dish].present? && params[:location].present?
    # elsif params[:dish].present? && !params[:location].present?
    # elsif params[:location].present? && !params[:dish].present?
  end
end
