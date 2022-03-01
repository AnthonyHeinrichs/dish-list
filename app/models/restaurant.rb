class Restaurant < ApplicationRecord
  has_many :dish_restaurants
  geocoded_by :address
end
