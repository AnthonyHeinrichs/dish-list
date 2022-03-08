class AddWebsiteToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :website, :string
  end
end
