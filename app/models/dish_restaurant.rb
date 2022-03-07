class DishRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :dish
end
