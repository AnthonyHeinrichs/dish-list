class RemoveRatingFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :rating, null: false
  end
end
