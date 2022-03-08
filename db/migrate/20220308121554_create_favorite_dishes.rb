class CreateFavoriteDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_dishes do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
