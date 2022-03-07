class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant=  Restaurant.new(params[:restaurant])

  def index
    @restaurants = Restaurant.all

    if params[:location].present?
      @restaurants = Restaurant.all.near(params[:location], 20)
    end
  end
end
