class Restaurant < ApplicationRecord

  has_many :dish_restaurants, dependent: :destroy
  has_many :dishes, through: :dish_restaurants, dependent: :destroy
  has_many :openings
  has_many :reviews

  geocoded_by :address

  
  after_validation :geocode, :address_changed?
end
