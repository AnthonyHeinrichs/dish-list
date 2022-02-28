class Review < ApplicationRecord
  belongs_to :dish_restaurant
  belongs_to :user
end
