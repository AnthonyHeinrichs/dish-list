class AddDishToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :dish, :string
  end
end
