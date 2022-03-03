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
  description: 'Pad Thai is a dish typically made with rice noodles, shrimp, peanuts, a scrambled egg, and bean sprouts, among other vegetables.',
  image_url: 'https://images.unsplash.com/photo-1559314809-0d155014e29e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
dish.save!

dish = Dish.new(
  name: 'Spaghetti Bolognese',
  country: 'Italy',
  description: 'Bolognese sauce is a meat-based sauce in Italian cuisine, typical of the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.',
  image_url: 'https://images.unsplash.com/photo-1622973536968-3ead9e780960?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
dish.save!

dish = Dish.new(
  name: 'Poutine',
  country: 'Canada',
  description: 'Poutine is a dish of french fries and cheese curds topped with a brown gravy.',
  image_url: 'https://images.unsplash.com/photo-1586805608485-add336722759?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
)
dish.save!

dish = Dish.new(
  name: 'Schnitzel',
  country: 'Austria',
  description: 'A schnitzel is a thin slice of meat. The meat is usually thinned by pounding with a meat tenderizer. Most commonly, the meat is breaded before frying. Breaded schnitzel is popular in many countries and is made using veal, pork, chicken, mutton, beef, or turkey.',
  image_url: 'https://images.unsplash.com/photo-1599921841143-819065a55cc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'
)
dish.save!


puts '5 dishes created :)'

# -------------------------------------------------------------------------------

puts 'Removing dated restaurants'
Restaurant.delete_all
puts 'Creating Restaurants...'


restaurant_1 = { name: 'Restaurant Alpha', address: 'Berlin', }
restaurant_2 = { name: 'Restaurant Beta', address: 'Hamburg', }
restaurant_3 = { name: 'Restaurant Charly', address: 'Munich', }
restaurant_4 = { name: 'Restaurant Delta', address: 'Koln', }
restaurant_5 = { name: 'Restaurant Epsylon', address: 'Berlin', }
restaurant_6 = { name: 'Restaurant Foxy', address: 'Munich', }
restaurant_7 = { name: 'Restaurant Gina', address: 'Berlin', }

[ restaurant_1, restaurant_2, restaurant_3, restaurant_4, restaurant_5, restaurant_6, restaurant_7 ].each do |infusion|
  restaurant = Restaurant.create(infusion)
  puts "Sweat and tears build #{restaurant.name}."
end

puts 'Thank you for taking my seed. May it be germinating inside of you.'
