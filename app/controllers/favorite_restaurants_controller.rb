class FavoriteRestaurantsController < ApplicationController
  def destroy
    @favorite_restaurant = FavoriteRestaurant.find(params[:favorite_id])
    @favorite_restaurant.destroy
    redirect_to user_path(current_user)
  end
end
