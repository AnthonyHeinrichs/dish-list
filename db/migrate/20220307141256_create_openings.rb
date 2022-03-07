class CreateOpenings < ActiveRecord::Migration[6.1]
  def change
    create_table :openings do |t|
      t.integer :weekday
      t.integer :start_hour
      t.integer :end_hour
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
