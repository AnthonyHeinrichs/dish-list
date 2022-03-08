class FavoriteRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  # Validation that a single user can only have a specific restaurant added to their favorites list once.
  validates :restaurant, uniqueness: true
end
