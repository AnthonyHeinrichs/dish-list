class FavoriteDishesController < ApplicationController
  def destroy
    @favorite_dish = FavoriteDish.find(params[:favorite_id])
    @favorite_dish.destroy
    redirect_to user_path(current_user)
  end
end
