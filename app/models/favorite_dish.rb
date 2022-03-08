class FavoriteDish < ApplicationRecord
  belongs_to :dish
  belongs_to :user
  # Validation that a single user can only have a specific dish added to their favorites list once.
  validates :dish, uniqueness: true
end
