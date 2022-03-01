class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @dishes = Dish.all

    if params[:query].present?
      @dishes = Dish.all.where(country: params[:query])
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'dishes/list', locals: { dishes: @dishes }, formats: [:html] }
    end

    @countries = Dish.pluck(:country)

  end
end
