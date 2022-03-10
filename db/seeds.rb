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
  image_url: 'https://images.unsplash.com/photo-1559314809-0d155014e29e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  spiciness: 4
}
dish_2 = {
  name: 'Spaghetti Bolognese',
  country: 'Italy',
  description: 'Bolognese sauce is a meat-based sauce in Italian cuisine, typical of the city of Bologna. It is customarily used to dress tagliatelle al ragù and to prepare lasagne alla bolognese.',
  image_url: 'https://images.unsplash.com/photo-1622973536968-3ead9e780960?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  spiciness: 3
}
dish_3 = {
  name: 'Poutine',
  country: 'Canada',
  description: 'Poutine is a dish of french fries and cheese curds topped with a brown gravy.',
  image_url: 'https://images.unsplash.com/photo-1586805608485-add336722759?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  spiciness: 2
}
dish_4 = {
  name: 'Schnitzel',
  country: 'Austria',
  description: 'A schnitzel is a thin slice of meat. The meat is usually thinned by pounding with a meat tenderizer. Most commonly, the meat is breaded before frying. Breaded schnitzel is popular in many countries and is made using veal, pork, chicken, mutton, beef, or turkey.',
  image_url: 'https://images.unsplash.com/photo-1599921841143-819065a55cc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
  spiciness: 1
}
dish_5 = {
  name: 'Massaman Curry',
  country: 'Thailand',
  description: 'Massaman Curry is a rich, relatively mild Thai curry. Being a fusion dish, ingredients popular among Muslim traders from Persia, the Indian subcontinent, and the Malay Archipelago (e.g. cardamom, cinnamon, cloves, star anise, cumin, bay leaves, nutmeg, mace, and potato) were brought to Thailand and combined with ingredients more commonly used in native Thai cuisine (e.g. chili peppers, coriander, lemongrass, galangal, white pepper, shrimp paste, shallots, and garlic) to make massaman curry paste.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Kaeng_matsaman_kai.JPG',
  spiciness: 5
}
dish_6 = {
  name: 'Phat kaphrao',
  country: 'Thailand',
  description: "Phat kaphrao consists of meat such as pork, chicken, beef, and seafood stir fried with Thai holy basil and garlic. It is served with rice and topped up (optional) with fried eggs or khai dao (Thai: ไข่ดาว). The main seasonings are soy sauce, Thai fish sauce, oyster sauce (optional), cane sugar, and bird's eye chili",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/ae/Basil_fried_crispy_pork_with_rice_-_Chiang_Mai_-_2017-07-11_%28002%29.jpg',
  spiciness: 5
}
dish_7 = {
  name: 'Khao kha mu',
  country: 'Thailand',
  description: "Khao kha mu is an individual dish consisting of stewed pig's trotter in seasoning condensed hot pottage (some recipes are mixed with cocoa powder or boiled peanuts[2] [3]), then it will be cut into thin slices and topped on steamed rice. The dish is served with half spiced corned eggs, small pieces of pickled lettuce and occasionally blanched kale with fresh bird's eye chili peppers and cloves of garlic on the side. Sometimes it is eaten with clear broth soup. The accompanying dipping sauce is most often made of yellow chili peppers, garlics, granulated salt, limeade and vinegar.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/68/Khao_kha_mu_02.JPG',
  spiciness: 5
}
dish_8 = {
  name: 'Khao soi',
  country: 'Thailand',
  description: "The name means 'cut rice'. Traditionally, the dough for the rice noodles is spread out on a cloth stretched over boiling water. After steaming the large sheet noodle is then rolled and cut with scissors. Lao khao soi is traditionally made with hand sliced rice noodles in clear soup broth and topped with minced pork and tomato sauce.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Khao_Soi_Northern_Thai_food_%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%8B%E0%B8%AD%E0%B8%A2_%E0%B8%9C%E0%B8%B1%E0%B8%81%E0%B8%94%E0%B8%AD%E0%B8%87.jpg',
  spiciness: 3
}
dish_9 = {
  name: 'Yam naem khao thot',
  country: 'Thailand',
  description: "Yam naem khao thot (also known as naem khluk) is a salad made from crushed, deep-fried ball-shaped croquettes made from sticky rice and curry paste as the main ingredient, tossed together with shredded fermented pork sausage, and mixed with peanuts, crushed dried chillies, lime juice, sliced shallots and fresh herbs, and served with a selection of fresh greens and additional herbs on the side.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/4/42/Yam_khamin_khao_kung.jpeg',
  spiciness: 3
}
dish_10 = {
  name: 'Flädle',
  country: 'Germany',
  description: 'The Flädle are made as plain crepe-style pancakes (Palatschinken), then tightly rolled up and sliced into coils, and then usually served in a clear soup or beef broth as Flädlessuppe.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Frittatensuppe.jpg',
  spiciness: 1
}
dish_11 = {
  name: 'Spätzle',
  country: 'Germany',
  description: 'Spätzle is a type of small noodle or dumpling[1] made with eggs, typically serving as a side for meat dishes with gravy.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Sp%C3%A4tzle.jpg',
  spiciness: 1
}
dish_12 = {
  name: 'Gaisburger Marsch',
  country: 'Germany',
  description: "Gaisburger Marsch is a traditional Swabian beef stew, named after Gaisburg, a district of Stuttgart. The meat, cooked in a strong beef broth, is cut into cubes and served with cooked potatoes and Spätzle. The broth is poured over the dish before topping with golden-brown onions fried in butter.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Gaisburger_Marsch.jpg',
  spiciness: 1
}
dish_13 = {
  name: 'Leberknödel',
  country: 'Germany',
  description: "Leberknödel is a traditional dish of German, Austrian and Czech cuisines. Leberknödel are usually composed of beef liver, though in the German Palatinate region pork is used as an alternative. The meat is ground and mixed with bread, eggs, parsley and various spices, often nutmeg or marjoram.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/80/Leberknoedelsuppe.jpg',
  spiciness: 1
}
dish_14 = {
  name: 'Eisbein',
  country: 'Germany',
  description: "Eisbein (literally: 'ice leg') is a German culinary dish of pickled ham hock, usually cured and slightly boiled. The word probably comes from high german via the Latin term ischia used in medicine and hunting for the hip joint. In Southern parts of Germany, the common preparation is known as Schweinshaxe, and it is usually roasted.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/0/05/Eisbein-2.jpg',
  spiciness: 1
}
dish_15 = {
  name: 'Currywurst',
  country: 'Germany',
  description: "Currywurst is a fast food dish of German origin consisting of steamed, and fried sausage, usually pork (German: Bratwurst) typically cut into bite-sized chunks and seasoned with curry ketchup, a sauce based on spiced ketchup or tomato paste topped with curry powder, or a ready-made ketchup seasoned with curry and other spices. The dish is often served with fries.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/Currywurst_%26_Pommes_frites.jpg',
  spiciness: 3
}

dish_16 = {
  name: 'Rinderroulade',
  country: 'Germany',
  description: "Rinderroulade is a dish usually consisting of bacon, onions, mustard and pickles wrapped in thinly sliced beef which is then cooked. The dish is considered traditional also in the Upper Silesia region of Poland where it is known as rolada śląska (Silesian roulade) and in the Czech Republic where it is known as španělský ptáček (spanish bird).",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/8b/Rinderroulade_gef%C3%BCllt_Anschnitt_01.jpg',
  spiciness: 2
}

dish_17 = {
  name: 'Bulgogi',
  country: 'South Korea',
  description: "Bulgogi (불고기; /bʊlˈɡoʊɡiː/ bool-GOH-gee;[2] from Korean bul-gogi [pul.ɡo.ɡi]), literally fire meat, is a gui (구이; Korean-style grilled or roasted dish) made of thin, marinated slices of beef or pork grilled on a barbecue or on a stove-top griddle. It is also often stir-fried in a pan in home cooking. Sirloin, rib eye or brisket are frequently used cuts of beef for the dish. The dish originated from northern areas of the Korean Peninsula, but is a very popular dish in South Korea, where it can be found anywhere from upscale restaurants to local supermarkets as pan-ready kits.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/c/ce/Bulgogi_2.jpg',
  spiciness: 3
}

dish_18 = {
  name: 'Galbi',
  country: 'South Korea',
  description: "Galbi[1] (갈비), galbi-gui[1] (갈비구이), or grilled ribs[1] is a type of gui (grilled dish) in Korean cuisine. Galbi is the Korean word for rib, and the dish is usually made with beef short ribs. When pork spareribs or another meat is used instead, the dish is named accordingly. Galbi is served raw, then cooked on tabletop grills usually by the diners themselves.[2] The dish may be marinated in a sweet and savory sauce usually containing soy sauce, garlic, and sugar. Both non-marinated and marinated galbi are often featured in Korean barbecue.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Galbi_with_bamboo_leaves.jpg',
  spiciness: 3
}

dish_19 = {
  name: 'Bibimbap',
  country: 'South Korea',
  description: "Bibimbap[1] (/ˈbiːbɪmbæp/ BEE-bim-bap,[2] from Korean 비빔밥 [pi.bim.p͈ap̚], literally mixed rice), sometimes romanized as bi bim bap or bi bim bop, is a Korean rice dish. The term bibim means mixing rice (burned rice at the bottom of the dish and cooked rice), while the bap noun refers to rice. Bibimbap is served as a bowl of warm white rice topped with namul (sautéed and seasoned vegetables) or kimchi (traditional fermented vegetables) and gochujang (chili pepper paste), soy sauce, or doenjang (a fermented soybean paste). A raw or fried egg and sliced meat (usually beef) are common additions. The hot dish is stirred together thoroughly just before eating.",
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/b/bc/North_Korean_Bibimbap_%EB%B9%84%EB%B9%94%EB%B0%A5_%2812330376074%29.jpg',
  spiciness: 2
}

dish_array = []

[ dish_1, dish_2, dish_3, dish_4, dish_5, dish_6, dish_7, dish_8, dish_9, dish_10, dish_11, dish_12, dish_13, dish_14, dish_15, dish_16, dish_17, dish_18, dish_19 ].each do |infusion|
  dish = Dish.create(infusion)
  dish_array << dish
  puts "Cuting onions, frying garlic and stiring the broth... e voila #{dish.name} was created."
end

puts 'Tim Raue tasted each dish and is delighted to announce: They have all been created.'

# -------------------------------------------------------------------------------

puts 'Removing dated restaurants'
Restaurant.delete_all
puts 'Creating Restaurants...'


restaurant_1 = { name: 'Restaurant Tim Raue', address: 'Berlin', telephone: '+49 30 259 379 30', website: 'https://tim-raue.com', description: ' In the TIM RAUE restaurant we serve Asian-inspired cuisine, which can be characterised as a combination of Japanese product perfection, Thai aromatics and Chinese kitchen philosophy. We therefore avoid side dishes such as bread, noodles and rice, as well as white sugar as far as possible. When it comes to dairy products, the kitchen works exclusively with lactose-free products. We also offer a vegan menu that does not contain any animal products. We are happy to try to take slight allergies and intolerances into consideration, but if these are life-threatening to your health, please understand that we do not bear this responsibility. We will not offer you any meals in this case.' }
restaurant_2 = { name: 'Barefood Deli', address: 'Hamburg', telephone: '+49 40 369 305 40', website: 'www.barefooddeli.de', description: 'Delicious simple - Foods & Goods  Einfach natürlich, einfach bodenständig, einfach gut gemacht – das ist das Barefood Deli. Hier genießt man ehrlich, authentisch und frisch. Und man konzentriert sich ganz auf das Wesentliche: das Hier und Jetzt.' }
restaurant_3 = { name: 'Pizzeria Alt Hamburg', address: 'Hamburg', telephone: '+49 40 317 964 70', website: 'https://pizzeriaalthamburg.eatbu.com', description: 'Kenner der vielfältigen Küche kommen in unserem Lokal voll auf ihre Kosten. Wir heißen Sie herzlich willkommen in unserem Restaurant Pizzeria Alt Hamburg. Genießen Sie schmackhafte Speisen und das authentische Ambiente in unserem Haus. Die Sonne spüren können Sie in unserem gemütlichen Außenbereich. Unsere gut klimatisierten Innenräume sorgen für einen angenehmen Aufenthalt. ' }
restaurant_4 = { name: 'Loving Hut', address: 'Cologne', telephone: '+49 40 607 809 93', website: 'http://www.lovinghut.de', description: 'Loving Hut was born with the vision that all living things should live in peace, love and harmony with each other and with the earth.The attractive prices and high-quality plant-based ingredients are an invitation to international gourmet cuisine, making it possible for everyone to eat well and make a contribution to the environment.' }
restaurant_5 = { name: 'Suger Clan', address: 'Berlin', telephone: '+49 30 275 977 99', website: 'https://sugarclan.de', description: 'In our manufactory on Boxhagener Platz in Berlins Friedrichshain, we bake the fluffiest original Berlin pancakes (Berliner, Krapfen, Kreppel...) that you could wish for.Everything about the round gems is our absolute passion, which is why you can also get Italian bomboloni and variants in donut (or donut) style fresh from our confectionery every day. Selected ingredients and sustainability are our top priority, because the best is just good enough for you. You can get our masterpieces on the terrace or to take away - to your closest friends, your favorite colleagues or to show off to family. Wherever you take them: The Kleenen have a habit of outstripping one or the other cake in no time.' }
restaurant_6 = { name: 'NENI', address: 'Munich', telephone: '+49 89 904 00 15 61', website: 'www.nenimuenchen.de', description: 'NENI - that stands for Haya Molchos sons Nuriel, Elior, Nadiv and Ilan. Each of them contributes their part to the unique food concept and makes the NENI a real family business.Family and friends have always been an essential part of life for the Molchos. The motto of the family "Life is beautiful. Be part of it.”, NENI gives an insight into the world of Molchos, which is characterized by bright colors, exotic tastes and beguiling smells. The sympathetic chaos at the large, round tables and the sensual moment of sharing gives you the feeling of being a guest among friends.' }
restaurant_7 = { name: 'Ratskeller Köpenick', telephone: '+49 30 6 55 51 78', website: 'www.ratskeller-koepenick.de', address: 'Berlin', description: 'We devote ourselves entirely to traditional and modern German cuisine: head chef Matthias Starke maintains this tradition with fresh and regional ingredients. Herbs, natural aromas and a variety of spices complement salt and pepper. Trends and internationality are not taboo! He and his team like to surprise you with new and creative ideas!' }
restaurant_8 = { name: 'Schwabylon', address: 'Berlin', telephone: '+49 1590 551 2299', website: 'http://schwabylon-berlin.de', description: 'Lieber vom Fressa an Ranza als vom Schaffa an Buckel! Im Berliner Spätzle-Exil gibt es schwäbische Küche mitten in Neukölln. Bei uns ist alles selbstgemacht und unsere Spätzle machen wir ausschließlich mit Bio-Eiern. Außer drei süddeutschen Klassikern gibt es unsere Spätzle auch süß und eine wöchentlich wechselnde Köstlichkeit (aktuelle Infos findet ihr immer auf unserer Facebook-Seite) Zum Trinka gibt es im Schwabylon leckere Seezüngle aus dem Allgäu und aus dem gleichen Haus das gute Härle Bier. Also kommat und langat no fescht zu  ihr werdats braucha für da Winter!' }
restaurant_9 = { name: 'Ogam', address: 'Emser Str. 40, 12051 Berlin', telephone: '0176 40446945', website: 'https://www.facebook.com/Ogamcafe/', description: 'Immerse yourself in outstanding Korean cuisine here. Take a break and try nicely cooked kimchi pancakes, cold buckwheat noodles and cold noodles. Most guests say that berliner is good. This restaurant is famous for its great service and friendly staff, that is always ready to help you. Prices here are reported to be democratic. Google users awarded Ogam 4.9.' }
restaurant_10 = { name: 'Babikyu', address: 'Bergmannstraße 1, 10961 Berlin', telephone: '0174 8143355', website: 'https://www.facebook.com/babikyuberlin/', description: 'Mit Bulgogi Feuerfleisch, Ribs aus dem Smoker, BiBimBab, Kimchi, einer stilvoller Einrichtung und urbanem Flair verführen wir das Publikum in der Berliner Bergmannstraße.' }
restaurant_11 = { name: 'Chikogi', address: 'Oranienstraße 31, 10999 Berlin', telephone: '0162 5207505', website: 'https://www.facebook.com/Chikogi-1766420593626884/', description: 'Mit Bulgogi Feuerfleisch, BiBimBab, Kimchi, einer stilvoller Einrichtung und urbanem Flair verführen wir das Publikum in der Oranienstr., Berlin-Kreuzberg' }
restaurant_12 = { name: 'Korean Food Stories', address: 'Prenzlauer Allee 217, 10405 Berlin', telephone: '030 54630766', website: 'https://www.koreanfoodstories.com/', description: 'Korean Food Stories is a small Korean restaurant in the heart of Prenzlauer Berg. We serve fresh and healthy Korean food for every day. Our specialty is bibimbap served in the traditional stone pot (dolsot). Looking for some damn good kimchi? Congratulations the search is over. We produce excellent kimchi in small batches to ensure 100% flavor! Also check out your selection of homemade sauces and chili oils.' }
restaurant_13 = { name: 'Wawa Berlin', address: 'Grunewaldstraße 10, 10823 Berlin', telephone: '030 65774230', website: 'https://www.wawaberlin.com/', description: 'WaWa is a Korean restaurant in Berlin that serves authentic Korean cuisine.WaWa’s biggest pride comes from being able to feed everyone with joy, and to provide everyone an equally great food journey to Korea.' }


puts 'Removing dated DishRestaurants'
DishRestaurant.delete_all

[ restaurant_1, restaurant_2, restaurant_3, restaurant_4, restaurant_5, restaurant_6, restaurant_7, restaurant_8, restaurant_9, restaurant_10, restaurant_11, restaurant_12, restaurant_13 ].each do |infusion|
  restaurant = Restaurant.create(infusion)
  puts "Sweat and tears build #{restaurant.name}."
end

puts 'Thank you for taking my seed. May it be germinating inside of you.'

# -------------------------------------------------------------------------------

puts 'Traveling through time'
Opening.delete_all
puts 'Injecting new time...'

# weekday takes 1-7 where 1=Monday and 7=Sunday
# 25 = CLOSED

# 1. Opening Hours - Day/week Restaurant like
open_mon = { weekday: 1, start_hour: 9, end_hour: 17 }
open_tue = { weekday: 2, start_hour: 9, end_hour: 17 }
open_wed = { weekday: 3, start_hour: 9, end_hour: 17 }
open_thu = { weekday: 4, start_hour: 9, end_hour: 17 }
open_fri = { weekday: 5, start_hour: 9, end_hour: 19 }
open_sat = { weekday: 6, start_hour: 11, end_hour: 19 }
open_sun = { weekday: 7, start_hour: 25, end_hour: 25 }

# 2. Opening Hours - late Week Restaurant
open_mon_1 = { weekday: 1, start_hour: 11, end_hour: 21 }
open_tue_1 = { weekday: 2, start_hour: 11, end_hour: 21 }
open_wed_1 = { weekday: 3, start_hour: 11, end_hour: 21 }
open_thu_1 = { weekday: 4, start_hour: 11, end_hour: 21 }
open_fri_1 = { weekday: 5, start_hour: 11, end_hour: 21 }
open_sat_1 = { weekday: 6, start_hour: 11, end_hour: 19 }
open_sun_1 = { weekday: 7, start_hour: 25, end_hour: 25 }

# 3. Opening Hours - Late Restaurant
open_mon_2 = { weekday: 1, start_hour: 25, end_hour: 25 }
open_tue_2 = { weekday: 2, start_hour: 11, end_hour: 22 }
open_wed_2 = { weekday: 3, start_hour: 11, end_hour: 22 }
open_thu_2 = { weekday: 4, start_hour: 11, end_hour: 22 }
open_fri_2 = { weekday: 5, start_hour: 11, end_hour: 22 }
open_sat_2 = { weekday: 6, start_hour: 12, end_hour: 22 }
open_sun_2 = { weekday: 7, start_hour: 12, end_hour: 22 }

restaurants = Restaurant.all

# Injecting Opening Hours to Restaurant
[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[0]
  opening.save!
  puts "Waaaaaap... Time #{opening.weekday}."
end

[ open_mon_1, open_tue_1, open_wed_1, open_thu_1, open_fri_1, open_sat_1, open_sun_1 ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[1]
  opening.save!
  puts "Waaaaaap... Time #{opening.weekday}."
end

[ open_mon_2, open_tue_2, open_wed_2, open_thu_2, open_fri_2, open_sat_2, open_sun_2 ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[2]
  opening.save!
  puts "Waaaaaap... Time #{opening.weekday}."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[3]
  opening.save!
  puts "Its #{opening.weekday} more minutes to go."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[4]
  opening.save!
  puts "Daddy loves me #{opening.weekday} times."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[5]
  opening.save!
  puts "I just ate #{opening.weekday} cooky."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[6]
  opening.save!
  puts "I just ate #{opening.weekday} cooky."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[7]
  opening.save!
  puts "I just ate #{opening.weekday} cooky."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[8]
  opening.save!
  puts "I just ate #{opening.weekday} cooky."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[9]
  opening.save!
  puts "I just ate #{opening.weekday} cooky."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[10]
  opening.save!
  puts "I just ate #{opening.weekday} cooky."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[11]
  opening.save!
  puts "I just ate #{opening.weekday} cooky."
end

[ open_mon, open_tue, open_wed, open_thu, open_fri, open_sat, open_sun ].each do |infusion|
  opening = Opening.new(infusion)
  opening.restaurant = restaurants[12]
  opening.save!
  puts "Mother told me this will happen #{opening.weekday} times."
end
