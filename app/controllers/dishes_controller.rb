class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @dishes = Dish.all
    @restaurants = Restaurant.all
    @dishrestaurants = DishRestaurant.all

    if params[:query].present?
      @dishes = Dish.all.where(country: params[:query])
    end

    respond_to do |format|
      format.html
      if params[:commit].present?
        format.text { render partial: 'restaurants/dishes_input', locals: { dishes: @dishes }, formats: [:html] }
      else
        format.text { render partial: 'dishes/list', locals: { dishes: @dishes }, formats: [:html] }
      end

    end

    @countries = Dish.pluck(:country)


  end

  def favorite
    @dish = Dish.find params[:dish_id]
    FavoriteDish.create(user: current_user, dish: @dish)
    redirect_to dishes_path, notice: 'Safed to favorites'
  end

  def destroy
  end
end
