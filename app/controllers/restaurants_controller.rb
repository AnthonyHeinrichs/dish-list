class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]



  def index
    @restaurants = Restaurant.all

    if params[:location].present?
      @restaurants = Restaurant.all.near(params[:location], 50)
    end
  end
end
