class AddDescriptionAndRatingAndAuthentictyAndValueToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :description, :string
  end
end
