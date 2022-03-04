class Dish < ApplicationRecord
  has_many :dish_restaurants, dependent: :destroy
  has_many :restaurants, through: :dish_restaurants
end
