class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @dishes = Dish.all

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'dishes/list', locals: { dishes: @dishes }, formats: [:html] }
    end
  end
end
