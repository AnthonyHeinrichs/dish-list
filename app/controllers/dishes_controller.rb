class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @dishes = Dish.all
  end

end
