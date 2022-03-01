# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Removing old dish data'

Dish.delete_all

puts 'Creating 5 dishes'

dish = Dish.new(
  name: 'Pad Thai',
  country: 'Thailand',
  description: 'Pad Thai is a dish typically made with rice noodles, shrimp, peanuts, a scrambled egg, and bean sprouts, among other vegetables.'
)
dish.save!

dish = Dish.new(
  name: 'Spaghetti alla puttanesca',
  country: 'Italy',
  description: 'Spaghetti alla puttanesca is a pasta dish invented in Naples in the mid-20th century and made typically with tomatoes, olive oil, olives, chili peppers, capers, and garlic—with vermicelli or spaghetti pasta.'
)
dish.save!

dish = Dish.new(
  name: 'Poutine',
  country: 'Canada',
  description: 'Poutine is a dish of french fries and cheese curds topped with a brown gravy.'
)
dish.save!

dish = Dish.new(
  name: 'Roulade',
  country: 'Germany',
  description: 'Roulade is a dish of filled rolled meat or pastry. Roulade can be savory or sweet.'
)
dish.save!

dish = Dish.new(
  name: 'Chicken Kiev',
  country: 'Ukraine',
  description: 'Chicken Kiev is a dish made of chicken fillet pounded and rolled around cold butter, then coated with egg and bread crumbs, and either fried or baked.'
)
dish.save!

puts '5 dishes created :)'
