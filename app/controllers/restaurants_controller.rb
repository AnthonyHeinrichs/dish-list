require "json"
require "open-uri"

class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant =  Restaurant.new(restaurant_strong)
    @restaurant.user = current_user
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_path)
    redirect_to restaurant_path(@restaurnat)
  end

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

  private

  def restaurant_strong
    params.require(:restaurant).permit(:name, :address)
  end
end
