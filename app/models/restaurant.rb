class Restaurant < ApplicationRecord
  has_many :dish_restaurants
  has_many :dishes, through: :dish_restaurants
  geocoded_by :address

  
  after_validation :geocode, :address_changed?
end
