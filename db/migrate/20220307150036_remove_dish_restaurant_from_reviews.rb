class RemoveDishRestaurantFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_reference :reviews, :dish_restaurant, null: false, foreign_key: true
  end
end
