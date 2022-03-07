class Opening < ApplicationRecord
  belongs_to :restaurant
  has_many :dish_restaurants
end
