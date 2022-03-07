class AddDescriptionAndRatingToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :description, :string
    add_column :reviews, :rating, :integer
  end
end
