class Restaurant < ApplicationRecord
  has_many :dish_restaurants
  geocoded_by :address
  has_many :dishes, through: :restaurants
end
