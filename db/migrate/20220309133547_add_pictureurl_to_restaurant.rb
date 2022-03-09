class AddPictureurlToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :picture, :string
  end
end
