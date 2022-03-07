class AddValueToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :value, :integer
  end
end
