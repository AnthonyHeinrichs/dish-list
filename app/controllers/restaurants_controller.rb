class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  geocoded_by :address
  after_validation :geocode, :address_changed?


  def index
    @restaurants = Restaurant.all


    if params[:address].exists?
      @restaurants = Restaurant.all.near(:address, 10)
    end
  end
end
