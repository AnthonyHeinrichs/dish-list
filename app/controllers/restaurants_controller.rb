class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @restaurants = Restaurant.all

    # !! THIS LOGIC MUST BE CHANGED ONCE WE HAVE A LINKED RESTAURANTS_DISH FROM THE JOIN TABLE !!
    if params[:dish].present?
      @restaurants = Restaurant.all.where(id: params[:dish])
    end
    # !! THIS LOGIC MUST BE CHANGED ONCE WE HAVE A LINKED RESTAURANTS_DISH FROM THE JOIN TABLE !!
  end
end
