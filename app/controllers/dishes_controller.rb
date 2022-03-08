class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @dishes = Dish.all
    @food = @dishes.find_by_id(87)

    if params[:query].present?
      @dishes = Dish.all.where(country: params[:query])
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'dishes/list', locals: { dishes: @dishes }, formats: [:html] }
    end

    @countries = Dish.pluck(:country)

    @dishrestaurants = DishRestaurant.all
  end

  def favorite
    @dish = Dish.find params[:dish_id]
    FavoriteDish.create(user: current_user, dish: @dish)
    redirect_to dishes_path, notice: 'Added dish to favorites'
  end

  def destroy
  end
end
