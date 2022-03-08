class AddDetailsToDish < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :spiciness, :integer
  end
end
