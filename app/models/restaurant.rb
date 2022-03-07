class Restaurant < ApplicationRecord
  has_many :dish_restaurants
  has_many :dishes, through: :restaurants
  geocoded_by :address
  after_validation :geocode, :address_changed?
  belongs_to :user
end
