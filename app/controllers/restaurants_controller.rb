require "json"
require "open-uri"

class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
    @restaurant = Restaurant.new
  end

  def create

    @restaurant =  Restaurant.new(restaurant_strong)
    @dishes = params[:dish_restaurants][:dishes].reject(&:empty?)
    raise
    @restaurant.save
    @dishes.each do |dish_id|
      dish = Dish.find(dish_id.to_i)
      DishRestaurant.create(dish: dish, restaurant: @restaurant)
    end
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @dishes = params[:dish_restaurants][:dishes].reject(&:empty?)
    @restaurant.update(restaurant_strong)
    @dishes.each do |dish_id|
      dish = Dish.find(dish_id.to_i)
      DishRestaurant.create(dish: dish, restaurant: @restaurant)
    end
    redirect_to restaurants_path
  end

  def index
    @restaurants = Restaurant.all
    @dishrestaurants = DishRestaurant.all
    @timenow = Time.now
    @timenow = @timenow.hour
    @daynow = Time.now
    @daynow = @daynow.wday - 1
    @dishes = Dish.all
    @users = User.all

    if params[:location].present? && params[:dish].present?
      @restaurants = Restaurant.near(params[:location], 20)
      @restaurants = @restaurants.all.select { |restaurant| restaurant.dishes.map(&:name).include?(params[:dish]) }
    elsif params[:location].present?
      @restaurants = Restaurant.all.near(params[:location], 20)
    elsif params[:dish].present?
      @restaurants = Restaurant.all.select { |restaurant| restaurant.dishes.map(&:name).include?(params[:dish]) }
    end
  end

  def favorite
    @restaurant = Restaurant.find params[:restaurant_id]
    FavoriteRestaurant.create(user: current_user, restaurant: @restaurant)
    redirect_to current_user, notice: 'Added restaurant to favorites'
  end

  private

  def restaurant_strong
    params.require(:restaurant).permit(:name, :address, :website, :description, :telephone, photos: [])
  end

end
