class CreateDishRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :dish_restaurants do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
