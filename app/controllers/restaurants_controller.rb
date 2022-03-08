require "json"
require "open-uri"

class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @restaurants = Restaurant.all
    @dishrestaurants = DishRestaurant.all
    @timenow = Time.now
    @timenow = @timenow.hour
    @daynow = Time.now
    @daynow = @daynow.wday - 1
    # !! THIS LOGIC MUST BE CHANGED ONCE WE HAVE A LINKED RESTAURANTS_DISH FROM THE JOIN TABLE !!

    if params[:location].present?
      @restaurants = Restaurant.all.near(params[:location], 20)
    end

    # API Call
    # search = "ramen"
    # url = 'https://api.spoonacular.com/food/products/search?query=ramen&apiKey=API-KEY'
    # user_serialized = URI.open(url).read
    # @gituser = JSON.parse(user_serialized)
  end

  def favorite
    @restaurant = Restaurant.find params[:restaurant_id]
    FavoriteRestaurant.create(user: current_user, restaurant: @restaurant)
    redirect_to restaurants_path, notice: 'Added restaurant to favorites'
  end
end
