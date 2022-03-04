# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning the plates...'
Dish.delete_all
puts 'Preparing new dishes to be made...'

dish_1 = {
  name: 'Pad Thai',
  country: 'Thailand',
  description: 'Pad Thai is a dish typically made with rice noodles, shrimp, peanuts, a scrambled egg, and bean sprouts, among other vegetables.',
  image_url: 'https://images.unsplash.com/photo-1559314809-0d155014e29e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
}
dish_2 = {
  name: 'Spaghetti Bolognese',
  country: 'Italy',
  description: 'Bolognese sauce is a meat-based sauce in Italian cuisine, typical of the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.',
  image_url: 'https://images.unsplash.com/photo-1622973536968-3ead9e780960?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
}
dish_3 = {
  name: 'Poutine',
  country: 'Canada',
  description: 'Poutine is a dish of french fries and cheese curds topped with a brown gravy.',
  image_url: 'https://images.unsplash.com/photo-1586805608485-add336722759?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
}
dish_4 = {
  name: 'Schnitzel',
  country: 'Austria',
  description: 'A schnitzel is a thin slice of meat. The meat is usually thinned by pounding with a meat tenderizer. Most commonly, the meat is breaded before frying. Breaded schnitzel is popular in many countries and is made using veal, pork, chicken, mutton, beef, or turkey.',
  image_url: 'https://images.unsplash.com/photo-1599921841143-819065a55cc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'
}
dish_5 = {
  name: 'Massaman Curry',
  country: 'Thailand',
  description: 'Massaman Curry is a rich, relatively mild Thai curry. Being a fusion dish, ingredients popular among Muslim traders from Persia, the Indian subcontinent, and the Malay Archipelago (e.g. cardamom, cinnamon, cloves, star anise, cumin, bay leaves, nutmeg, mace, and potato) were brought to Thailand and combined with ingredients more commonly used in native Thai cuisine (e.g. chili peppers, coriander, lemongrass, galangal, white pepper, shrimp paste, shallots, and garlic) to make massaman curry paste.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Kaeng_matsaman_kai.JPG'
}
dish_6 = {
  name: 'Phat kaphrao',
  country: 'Thailand',
  description: "Phat kaphrao consists of meat such as pork, chicken, beef, and seafood stir fried with Thai holy basil and garlic. It is served with rice and topped up (optional) with fried eggs or khai dao (Thai: ไข่ดาว). The main seasonings are soy sauce, Thai fish sauce, oyster sauce (optional), cane sugar, and bird's eye chili",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/ae/Basil_fried_crispy_pork_with_rice_-_Chiang_Mai_-_2017-07-11_%28002%29.jpg'
}
dish_7 = {
  name: 'Khao kha mu',
  country: 'Thailand',
  description: "Khao kha mu is an individual dish consisting of stewed pig's trotter in seasoning condensed hot pottage (some recipes are mixed with cocoa powder or boiled peanuts[2] [3]), then it will be cut into thin slices and topped on steamed rice. The dish is served with half spiced corned eggs, small pieces of pickled lettuce and occasionally blanched kale with fresh bird's eye chili peppers and cloves of garlic on the side. Sometimes it is eaten with clear broth soup. The accompanying dipping sauce is most often made of yellow chili peppers, garlics, granulated salt, limeade and vinegar.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/68/Khao_kha_mu_02.JPG'
}
dish_8 = {
  name: 'Khao soi',
  country: 'Thailand',
  description: "The name means 'cut rice'. Traditionally, the dough for the rice noodles is spread out on a cloth stretched over boiling water. After steaming the large sheet noodle is then rolled and cut with scissors. Lao khao soi is traditionally made with hand sliced rice noodles in clear soup broth and topped with minced pork and tomato sauce.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Khao_Soi_Northern_Thai_food_%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%8B%E0%B8%AD%E0%B8%A2_%E0%B8%9C%E0%B8%B1%E0%B8%81%E0%B8%94%E0%B8%AD%E0%B8%87.jpg'
}
dish_9 = {
  name: 'Yam naem khao thot',
  country: 'Thailand',
  description: "Yam naem khao thot (also known as naem khluk) is a salad made from crushed, deep-fried ball-shaped croquettes made from sticky rice and curry paste as the main ingredient, tossed together with shredded fermented pork sausage, and mixed with peanuts, crushed dried chillies, lime juice, sliced shallots and fresh herbs, and served with a selection of fresh greens and additional herbs on the side.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/4/42/Yam_khamin_khao_kung.jpeg'
}
dish_10 = {
  name: 'Flädle',
  country: 'Germany',
  description: 'The Flädle are made as plain crepe-style pancakes (Palatschinken), then tightly rolled up and sliced into coils, and then usually served in a clear soup or beef broth as Flädlessuppe.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Frittatensuppe.jpg'
}
dish_11 = {
  name: 'Spätzle',
  country: 'Germany',
  description: 'Spätzle is a type of small noodle or dumpling[1] made with eggs, typically serving as a side for meat dishes with gravy.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Sp%C3%A4tzle.jpg'
}
dish_12 = {
  name: 'Gaisburger Marsch',
  country: 'Germany',
  description: "Gaisburger Marsch is a traditional Swabian beef stew, named after Gaisburg, a district of Stuttgart. The meat, cooked in a strong beef broth, is cut into cubes and served with cooked potatoes and Spätzle. The broth is poured over the dish before topping with golden-brown onions fried in butter.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Gaisburger_Marsch.jpg'
}
dish_13 = {
  name: 'Leberknödel',
  country: 'Germany',
  description: "Leberknödel is a traditional dish of German, Austrian and Czech cuisines. Leberknödel are usually composed of beef liver, though in the German Palatinate region pork is used as an alternative. The meat is ground and mixed with bread, eggs, parsley and various spices, often nutmeg or marjoram.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/80/Leberknoedelsuppe.jpg'
}
dish_14 = {
  name: 'Eisbein',
  country: 'Germany',
  description: "Eisbein (literally: 'ice leg') is a German culinary dish of pickled ham hock, usually cured and slightly boiled. The word probably comes from high german via the Latin term ischia used in medicine and hunting for the hip joint. In Southern parts of Germany, the common preparation is known as Schweinshaxe, and it is usually roasted.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/0/05/Eisbein-2.jpg'
}
dish_15 = {
  name: 'Currywurst',
  country: 'Germany',
  description: "Currywurst is a fast food dish of German origin consisting of steamed, and fried sausage, usually pork (German: Bratwurst) typically cut into bite-sized chunks and seasoned with curry ketchup, a sauce based on spiced ketchup or tomato paste topped with curry powder, or a ready-made ketchup seasoned with curry and other spices. The dish is often served with fries.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/Currywurst_%26_Pommes_frites.jpg'
}
dish_16 = {
  name: 'Rinderroulade',
  country: 'Germany',
  description: "Rinderroulade is a dish usually consisting of bacon, onions, mustard and pickles wrapped in thinly sliced beef which is then cooked. The dish is considered traditional also in the Upper Silesia region of Poland where it is known as rolada śląska (Silesian roulade) and in the Czech Republic where it is known as španělský ptáček (spanish bird).",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/8b/Rinderroulade_gef%C3%BCllt_Anschnitt_01.jpg'
}

dish_array = []

[ dish_1, dish_2, dish_3, dish_4, dish_5, dish_6, dish_7, dish_8, dish_9, dish_10, dish_11, dish_12, dish_13, dish_14, dish_15, dish_16 ].each do |infusion|
  dish = Dish.create(infusion)
  dish_array << dish
  puts "Cuting onions, frying garlic and stiring the broth... e voila #{dish.name} was created."
end
puts 'Tim Raue tasted each dish and is delighted to announce: They have all been created.'

# -------------------------------------------------------------------------------
# RESTAURANTS

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

puts 'Removing dated DishRestaurants'
DishRestaurant.delete_all

[ restaurant_1, restaurant_2, restaurant_3, restaurant_4, restaurant_5, restaurant_6, restaurant_7 ].each do |infusion|
  restaurant = Restaurant.create(infusion)
  puts "Sweat and tears build #{restaurant.name}."
  DishRestaurant.create(restaurant: restaurant, dish: dish_array.sample) 
end

puts 'Thank you for taking my seed. May it be germinating inside of you.'
