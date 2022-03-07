class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]



  def index
    @restaurants = Restaurant.all
    @dishrestaurants = DishRestaurant.all
    # !! THIS LOGIC MUST BE CHANGED ONCE WE HAVE A LINKED RESTAURANTS_DISH FROM THE JOIN TABLE !!

    if params[:location].present?
      @restaurants = Restaurant.all.near(params[:location], 20)
    end
  end
end
