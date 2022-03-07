class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant=  Restaurant.new(restaurant_strong)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def index
    @restaurants = Restaurant.all

    if params[:location].present?
      @restaurants = Restaurant.all.near(params[:location], 20)
    end
  end

  private

  def restaurant_strong
    params.require(:restaurant).permit(:name, :address)
  end
end
