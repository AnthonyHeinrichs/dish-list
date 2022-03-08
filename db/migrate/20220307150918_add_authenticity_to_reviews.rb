class AddAuthenticityToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :authenticity, :integer
  end
end
