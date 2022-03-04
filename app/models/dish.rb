class Dish < ApplicationRecord
  has_many :dish_restaurants
  has_many :restaurants, through: :dish_restaurants
end
