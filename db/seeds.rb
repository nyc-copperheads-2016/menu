lukes = Restaurant.create(name: "Luke’s Lobster",
                                      website: "http://lukeslobster.com/",
                                      description: "Pure, Sustainable Maine Lobster Rolls",
                                      logo_url: "http://static1.squarespace.com/static/4feb30c5c4aaa03b060dccd8/t/56607dbde4b0b03b8620c02f/1452276611896/?format=1000w")

l = lukes.locations.create(address: "26 S William St",
                                      city: "New York",
                                      state: "NY",
                                      zip: "10004")

l = lukes.locations.create(address: "11 Water St",
                                      city: "Brooklyn",
                                      state: "NY",
                                      zip: "11201")

m = lukes.menus.create(name: "Main Menu")

main = m.sections.create(name: "Bites, Bowls, Boards")
extras = m.sections.create(name: "Salads")
drinks = m.sections.create(name: "Flatbreads")
sweets = m.sections.create(name: "Raw Bar")

lobster = main.items.create(name: "Lobster Roll", price: "16.00", photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/ZrnAsssJfSJMjWepQKXP9w/258s.jpg")
crab = main.items.create(name: "Crab Roll", price: "13.00", photo_url: "http://s3-media2.fl.yelpcdn.com/bphoto/1yUPo3-t0OMQwcquM8Swng/258s.jpg")

clam = extras.items.create(name: "New England Clam Chowder", price: "9.00", photo_url: "http://captaincrab.org/wp-content/uploads/2015/06/chowder-large.jpg")
claws = extras.items.create(name: "4 Jonah Crab Claws", price: "8.00", photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/ZrnAsssJfSJMjWepQKXP9w/258s.jpg")

mainebrew = drinks.items.create(name: "Maine Microbrews", price: "6.50", photo_url: "http://s3-media4.fl.yelpcdn.com/bphoto/5L6AXcbZlNFxhTbQ0UW9Kw/258s.jpg")
mainesoda = drinks.items.create(name: "Maine Root Soda & Lemonade", price: "3.00", photo_url: "http://s3-media4.fl.yelpcdn.com/bphoto/j3GgKBhbtoj98_dJFp0PCg/258s.jpg")

icecream = sweets.items.create(name: "Ice Cream Sandwiches", price: "4.00", photo_url: "http://cdn-jpg.thedailymeal.net/sites/default/files/u12505/lukes_lobster_blue_monster.jpg")

lobster.taste_list = "salty, buttery"
lobster.ingredient_list = "lobster, butter"
lobster.save

crab.taste_list = "salty, buttery"
crab.ingredient_list = "crab, butter"
crab.save

clam.taste_list = "savory"
clam.ingredient_list = "clam"
clam.save

claws.ingredient_list = "crab"
claws.save

mainebrew.taste_list = "hoppy"
mainebrew.ingredient_list = "beer"
mainebrew.save

mainesoda.taste_list = "sweet"
mainesoda.ingredient_list = "blueberry, lemon, sarsparilla, ginger"
mainesoda.save

icecream.taste_list = "sweet"
icecream.ingredient_list = "milk, blueberry, chocolate"
icecream.save


chopt = Restaurant.create(name: "Chop't",
                                      website: "http://choptsalad.com/",
                                      description: "Creative Salad Company",
                                      logo_url: "http://choptsalad.com/wp-content/themes/twentyfourteen-child/images/logo.png")

l = chopt.locations.create(address: "80 Pine St",
                                      city: "New York",
                                      state: "NY",
                                      zip: "10005")

m = chopt.menus.create(name: "Salads")

specials = m.sections.create(name: "Specials")
classics = m.sections.create(name: "Classics")

street = specials.items.create(name: "NYC STREET CART", price: "8.00", photo_url: "https://media.glassdoor.com/l/ed/7c/2f/35/the-nyc-street-cart-salad.jpg")
falafel = specials.items.create(name: "FALAFEL MARKET PLATE", price: "8.50", photo_url: "https://scontent.cdninstagram.com/hphotos-xpt1/t51.2885-15/s320x320/e35/12145423_1795795263980952_1219895798_n.jpg")

santafe = classics.items.create(name: "SANTA FE", price: "7.00", photo_url: "http://s3-media1.fl.yelpcdn.com/bphoto/YEhApVeVujYYRpjEMdj0PQ/348s.jpg")
steakhouse = classics.items.create(name: "STEAKHOUSE", price: "8.00", photo_url: "http://s3-media2.fl.yelpcdn.com/bphoto/Xgw0IMs4aoCtjPU_TzFN_A/o.jpg")

street.ingredient_list = "chicken, cauliflower, tomato, lettuce, cabbage"
street.save

falafel.diet_list = "vegetarian"
falafel.ingredient_list = "kale, quinoa, lentil, beets, chickpea, cauliflower"
falafel.save

santafe.diet_list = "vegetarian"
santafe.ingredient_list = "avocado, tomato, corn, cheese, onion, lettuce"
santafe.save

steakhouse.ingredient_list = "beef, tomato, onion, lettuce"
steakhouse.save


dead_rabbit = Restaurant.create(name: "The Dead Rabbit",
                                      website: "http://http://www.deadrabbitnyc.com",
                                      description: "The Dead Rabbit Grocery and Grog embodies the conviviality of Old New York and the Irish-American tradition. World’s Best Bar 2015",
                                      logo_url: "https://www.horeca.it/Portals/27/dead_rabbit_1.png")

l = dead_rabbit.locations.create(address: "30 Water Street",
                                      city: "New York",
                                      state: "NY",
                                      zip: "10004")

m = dead_rabbit.menus.create(name: "Drinks")

shaken = m.sections.create(name: "Shaken")
stirred = m.sections.create(name: "Stirred")

j_t_b = shaken.items.create(name: "John The Baptist", price: "15.00", description: "Green Spot Irish Whiskey, Green Tea, Apricot, Pistachio, Coconut, Absinthe, Lime", photo_url: "http://s3-media2.fl.yelpcdn.com/bphoto/LdSZ7bSIEWu8EgKSc4IGCg/o.jpg")
d_k = shaken.items.create(name: "Death Knell", price: "16.00", description: "Nikka Coffey Grain Whiskey, Togarashi, Oloroso Sherry, Lime, Orinoco Bitters", photo_url: "https://media.timeout.com/images/102962776/image.jpg")
m_j = shaken.items.create(name: "Master Juba", price: "15.00", description: "Powers John’s Lane Irish Whiskey, Dead Rabbit Cask Ale, Apple, Cinnamon, Cream, Egg, Mace, Pimento Bitters", photo_url: "https://slideshow.starchefs.com/p.php?a=UUFRXio7MyQqQFtFPzc1OjQmLjc5Jzw2Mio5LTsiKyQ%2BJzE%2FPzs%2FNCY7LiYoNDs%3D&m=1424381311")
w_g = shaken.items.create(name: "Western Gate", price: "15.00", description: "Powers Gold Irish Whiskey, Cranberry, Beet, Tangerine, Lemon, Pimento Bitters", photo_url: "http://bestguinnessnyc.com/wp-content/uploads/2014/06/Feature-750x400.jpg")
m = shaken.items.create(name: "Mockingbird", price: "15.00", description: "Boomsma Oude Genever, Cachaca, Mazanilla Sherry, Macadamia Nut, Vanilla, Lemon, Aromatic Bitters", photo_url: "http://www.fodors.com/ee/files/slideshows/3-The-Dead-Rabbit.jpg")

p_m = stirred.items.create(name: "Preacher man", price: "15.00", description: "Powers John’s Lane Irish Whiskey, Reposado Tequila, Amaro Ciociaro, Sweet Vermouth, Dry Vermouth Cocoa, Absinthe", photo_url: "http://assets.bwbx.io/images/iUOCn1jJ5beM/v2/1200x-1.jpg")
b_j = stirred.items.create(name: "Broadway Junction", price: "15.00", description: "Bushmills Black Bush Irish Whiskey, Creme De Noyeau, Campari, Cacao, Creole Bitters", photo_url: "http://static01.nyt.com/images/2015/03/01/travel/01COVER1/01COVER1-master315-v2.jpg")
b_r = stirred.items.create(name: "Black Rose", price: "15.00", description: "Tullamore Dew 12 Year Old Irish Whiskey, Bergamot Black Tea, Curacao, Averna Amaro, Walnut, Aromatic Bitters", photo_url: "https://cdn3.vox-cdn.com/thumbor/S6aDOWaEuOXmzEPP_ud5i5BDECU=/cdn0.vox-cdn.com/uploads/chorus_asset/file/3626146/The_Eddy__-_Deep_SEa_Colony.0.jpg")
l_w = stirred.items.create(name: "Little Water", price: "15.00", description: "Tanqueray Gin, Old Tom Gin, Dolin Blanc, Green Chartreuse, Pear, Pennyroyal, Absinthe", photo_url: "https://media.timeout.com/images/100643847/617/347/image.jpg")

j_t_b.taste_list = "sour, heavy, bitter"
j_t_b.ingredient_list = "whiskey, absinthe, lime, bitters"
j_t_b.save

d_k.taste_list = "heavy, bitter"
d_k.ingredient_list = "whiskey, sherry, lime, bitters"
d_k.save

m_j.taste_list = "sweet, creamy"
m_j.ingredient_list = "whiskey, egg, bitters"
m_j.save

w_g.taste_list = "sour, creamy"
w_g.ingredient_list = "whiskey, bitters"
w_g.save

m.taste_list = "sweet, creamy"
m.ingredient_list = "sherry, bitters, vanilla"
m.save

p_m.taste_list = "sweet, heavy, bitter"
p_m.ingredient_list = "whiskey, tequila, bitters ,vermouth"
p_m.save

b_j.taste_list = "creamy, bitter"
b_j.ingredient_list = "whiskey, bitters"
b_j.save

b_r.taste_list = "aromatic, bitter, sweet"
b_r.ingredient_list = "whiskey, black tea, bitters"
b_r.save

l_w.taste_list = "heavy, sweet, aromatic"
l_w.ingredient_list = 'gin, chartreuse, absinthe'
l_w.save

la_colombe = Restaurant.create(name: "La Colombe", logo_url: "https://pbs.twimg.com/profile_images/461243267376353280/MhvMVqGd_400x400.jpeg")

chipotle = Restaurant.create(name: "Chipotle", logo_url: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Chipotle_Mexican_Grill_logo.svg/768px-Chipotle_Mexican_Grill_logo.svg.png")

dos_toros = Restaurant.create(name: "Dos Toros Taqueria", logo_url: "http://aruliden.com/files/2015-03/Dos-Toros_logo.png")

trading_post = Restaurant.create(name: "Trading Post",
                                      website: "http://www.tradingpostnyc.com/",
                                      description: "Classic American restaurant and bar",
                                      logo_url: "https://static.wixstatic.com/media/7846b5_b2c0f2a265caa531401ae437c5923ae8.gif")

l = trading_post.locations.create(address: "170 John Street",
                                      city: "New York",
                                      state: "NY",
                                      zip: "10038")

m = trading_post.menus.create(name: "Dinner")

bites = m.sections.create(name: "Bites, Bowls, Boards")
salads = m.sections.create(name: "Salads")
flatbreads = m.sections.create(name: "Flatbreads")
raw = m.sections.create(name: "Raw Bar")
large = m.sections.create(name: "Large Plates")
sides = m.sections.create(name: "Sides")

onion = bites.items.create(name: "Classic Onion Soup", price: "13.00", photo_url: "https://static.wixstatic.com/media/7846b5_b53a041e5a0e42989fe03294cf391a19.jpg/v1/fit/w_1896,h_1264,q_90,usm_0.66_1.00_0.01/7846b5_b53a041e5a0e42989fe03294cf391a19.jpg")
yellowfin = bites.items.create(name: "Yellowfin Tuna Tartare", price: "18.00")
mussels = bites.items.create(name: "Mussel Pot", price: "17.00", photo_url: "https://static.wixstatic.com/media/7846b5_a15dae4597274e218cd9ce8fdcd774ec.jpg/v1/fit/w_1896,h_1264,q_90,usm_0.66_1.00_0.01/7846b5_a15dae4597274e218cd9ce8fdcd774ec.jpg")

kale = salads.items.create(name: "Local Kale", price: "14.00", photo_url: "https://static.wixstatic.com/media/7846b5_79ff71fe805e4004851c6a6f31e9bf5a.jpg/v1/fit/w_1896,h_1264,q_90,usm_0.66_1.00_0.01/7846b5_79ff71fe805e4004851c6a6f31e9bf5a.jpg")
beets = salads.items.create(name: "Roasted Beets", price: "15.00")

sausage = flatbreads.items.create(name: "Sausage", price: "16.00")
shrimp = flatbreads.items.create(name: "Spicy Shrimp", price: "16.00")

jumbo = raw.items.create(name: "Jumbo Shrimp (each)", price: "6.00", photo_url: "https://static.wixstatic.com/media/7846b5_bd1d734bcb2e487bbb673e21527fc2ae.jpg/v1/fit/w_1896,h_1264,q_90,usm_0.66_1.00_0.01/7846b5_bd1d734bcb2e487bbb673e21527fc2ae.jpg")
oysters = raw.items.create(name: "East Coast Oysters (each)", price: "3.00")

salmon = large.items.create(name: "Scottish Salmon", price: "28.00", photo_url: "https://static.wixstatic.com/media/7846b5_f9417ade3c9745108df059ca8326ba57.jpg/v1/fit/w_1896,h_1264,q_90,usm_0.66_1.00_0.01/7846b5_f9417ade3c9745108df059ca8326ba57.jpg")
chicken = large.items.create(name: "Roasted Amish Chicken Breast", price: "25.00")

fries = sides.items.create(name: "Hand-Cut Fries", price: "8.00")
mushrooms = sides.items.create(name: "Foraged Mushrooms", price: "9.00")

onion.diet_list = "vegetarian"
onion.taste_list = "savory"
onion.ingredient_list = "onion"
onion.save

yellowfin.diet_list = "pescatarian"
yellowfin.taste_list = "savory"
yellowfin.ingredient_list = "fish, ginger, cilantro, truffle, soy"
yellowfin.save

mussels.diet_list = "pescatarian"
mussels.taste_list = "savory, sour"
mussels.ingredient_list = "shellfish, sausage, lemon, thyme"
mussels.save

kale.diet_list = "vegetarian"
kale.ingredient_list = "kale, apple, cheese, nuts, cherries"
kale.save

beets.diet_list = "vegetarian"
beets.taste_list = "sweet, sour"
beets.ingredient_list = "nuts, mustard, wine, cheese"
beets.save

sausage.taste_list = "savory, spicy"
sausage.ingredient_list = "pork, broccoli rabe, garlic"
sausage.save

shrimp.diet_list = "pescatarian"
shrimp.taste_list = "spicy"
shrimp.ingredient_list = "tomatillo, avocado, cilantro"
shrimp.save

jumbo.diet_list = "pescatarian"
jumbo.ingredient_list = "shellfish"
jumbo.save

oysters.diet_list = "pescatarian"
oysters.taste_list = "umami, sour, salty"
oysters.ingredient_list = "shellfish"
oysters.save

salmon.ingredient_list = "fish, lentils, mustard"
salmon.save

chicken.ingredient_list = "brussel sprouts, apple, chicken"
chicken.save

fries.taste_list = "salty"
fries.ingredient_list = "potato"
fries.save

mushrooms.diet_list = "vegetarian"
mushrooms.taste_list = "umami"
mushrooms.ingredient_list = "mushroom"
mushrooms.save

cipriani = Restaurant.create(name: "Cipriani Wall Street", logo_url: "http://majasdiary.com/wp-content/uploads/2015/08/Cipriani-Logo.png")

roti = Restaurant.create(name: "Roti Mediterranean Grill", logo_url: "http://roti.com/wp-content/themes/roti_theme/graphics/nav-logo.png")

bonchon = Restaurant.create(name: "Bon Chon Chicken", logo_url: "http://static.wixstatic.com/media/145345_5b9f8a828ce6fae5d7f41f1c8f26a39c.gif")

neapolitan = Restaurant.create(name: "Neapolitan Express", logo_url: "http://www.pmq.com/images/cache/cache_b/cache_a/cache_9/logo-e5c9c9ab.jpeg?ver=1415373108&aspectratio=2.3575638506876")

starbucks = Restaurant.create(name: "Starbucks", logo_url:"https://upload.wikimedia.org/wikipedia/en/thumb/3/35/Starbucks_Coffee_Logo.svg/1024px-Starbucks_Coffee_Logo.svg.png")

jersey_mikes = Restaurant.create(name: "Jersey Mikes", logo_url: "https://www.masters.edu/media/652122/Jersey%20Mike's%20Logo.png")

subway = Restaurant.create(name: "Subway", logo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Subway_restaurant.svg/500px-Subway_restaurant.svg.png")

# restaurants_with_menus = Curl.post("https://api.locu.com/v2/venue/search", {
#   api_key: Rails.application.secrets.locu_api_key,
#   fields: [
#     "locu_id",
#     "name"
#   ],
#   venue_queries: [
#   {
#     location: {
#       geo: {
#         '$in_lat_lng_radius'.to_sym => [40.7061972,-74.0123236, 200]
#       }
#     },
#     menus: { '$present'.to_sym => true }
#   }
# ]}.to_json)
#
# venues = JSON.parse(restaurants_with_menus.body_str)["venues"]
#
# venues.each do |v|
#   r = Restaurant.create!(name: v['name'])
#
#   r_details_json = Curl.post("https://api.locu.com/v2/venue/search", {
#     api_key: Rails.application.secrets.locu_api_key,
#     fields: [
#       "name",
#       "menus",
#       "categories"
#     ],
#   venue_queries: [{ locu_id: v["locu_id"] }]}.to_json)
#
#   menus = JSON.parse(r_details_json.body_str)['venues'].first['menus']
#
#   menus.each do |menu|
#     m = r.menus.create!(name: menu['menu_name'])
#     menu['sections'].each do |section|
#       section['subsections'].each do |subsection|
#         if !(subsection['subsection_name']).blank?
#           s = m.sections.create!(name: subsection['subsection_name'])
#           subsection['contents'].each do |content|
#             if !(content['name'].blank?)
#               i = s.items.create!(name: content['name'],
#                                      price: content['price'],
#                                      description: content['description'])
#             else
#               puts "Skipping blank content"
#             end
#           end
#         else
#           puts "Not saving blank subsection"
#         end
#       end
#     end
#   end
# end
#
# u1 = User.create(username: "admin", email: "admin@example.com", password: "asdfasdf")
# u2 = User.create(username: "admin2", email: "admin@example2.com", password: "asdfasdf")
# u3 = User.create(username: "admin3", email: "admin@example3.com", password: "asdfasdf")
#
# 2.times do
#   FactoryGirl.create(:user)
# end
#
# u = FactoryGirl.create(:user)
#
# 2.times do
#   r = FactoryGirl.create(:restaurant)
#
#   2.times do
#     FactoryGirl.create(:location, restaurant: r)
#   end
#
#   2.times do
#     m = FactoryGirl.create(:menu, restaurant: r)
#
#     3.times do
#       s = FactoryGirl.create(:section, menu: m)
#
#       4.times do
#         i = FactoryGirl.create(:item, section: s)
#
#         diets = %w(vegan vegetarian halal kosher)
#         i.diet_list = diets.sample(2).join(", ")
#
#         tastes = %w(sweet spicy sour)
#         i.taste_list = tastes.sample(2).join(", ")
#
#         ingredients = %w(chicken beef fish nuts eggs)
#         i.ingredient_list = ingredients.sample(2).join(", ")
#
#         i.save
#       end
#
#       FactoryGirl.create(:favorite, user: u, item: Item.last)
#     end
#   end
# end

###############################################################################
claudio = Restaurant.create(name: "Da Claudio Ristorante",
  website: "http://www.daclaudionyc.com",
  description: "In the heart of lower Manhattan, Da Claudio brings a locally sourced seasonal Italian menu and friendly modern aesthetic to one of the oldest streets in New York. Its Nassau / Ann Street location is rich with both history and possibility. Da Claudio embraces New York tradition along with the city's changing dining landscape, offering curated fresh market driven-fare enhanced with the finest Italian imports,  a beautiful bar and salumeria as well as take-out and full service dining in a contemporary, light and airy space.",
  logo_url: "http://www.daclaudionyc.com/images/daclaudio_logo269x155.png")

l = claudio.locations.create(address: "21 Ann St",
                                      city: "New York",
                                      state: "NY",
                                      zip: "10038")

m = claudio.menus.create(name: "Dinner")

cicchetti = m.sections.create(name: "Cicchetti")
antipasti = m.sections.create(name: "Antipasti")
contorni = m.sections.create(name: "Contorni Del Di'")
primi = m.sections.create(name: "Primi")
secondi = m.sections.create(name: "Secondi")
dolci = m.sections.create(name: "Dolci")

piatto = cicchetti.items.create(
  name: "Piatto Del Salumiere",
  price: "16.00",
  photo_url: "http://www.daclaudionyc.com/assets/food_03.jpg",
  featured: true,
  description: "Salumi, cheese plate")

piatto.taste_list = "salty"
piatto.ingredient_list = "cheese"
piatto.diet_list = ""
piatto.save

u1.favorites.create(item_id: piatto.id)
u2.favorites.create(item_id: piatto.id)

crostini = cicchetti.items.create(
  name: "Crostini Del Di",
  price: "8.00",
  photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/ZQEi0AYUNp5MLhNllhffpA/o.jpg",
  description: "Open faced toasted bread of the day",
  featured: true)

crostini.taste_list = "salty"
crostini.ingredient_list = ""
crostini.diet_list = ""
crostini.save

vegetables = contorni.items.create(
  name: "Mixed Grilled Vegetables",
  price: "10.00",
  photo_url: "http://s3-media2.fl.yelpcdn.com/bphoto/zSLOaXnehUlL-BUB0Ohh7Q/o.jpg",
  featured: true)

vegetables.taste_list = ""
vegetables.ingredient_list = ""
vegetables.diet_list = "vegan, healthy"
vegetables.save

kale = contorni.items.create(
  name: "Kale with Whole Grain Mustard",
  price: "10.00",
  photo_url: "",
  description: "",
  featured: false)

kale.taste_list = ""
kale.ingredient_list = "kale"
kale.diet_list = "vegatarian, healthy"
kale.save

u1.favorites.create(item_id: kale.id)

potatoes = contorni.items.create(
  name: "Sauteed Herbed Potatoes",
  price: "8.00",
  photo_url: "",
  description: "",
  featured: false)

potatoes.taste_list = ""
potatoes.ingredient_list = ""
potatoes.diet_list = "vegatarian"
potatoes.save

polenta = contorni.items.create(
  name: "Parsnip Polenta",
  price: "8.00",
  photo_url: "",
  description: "",
  featured: false)

polenta.taste_list = ""
polenta.ingredient_list = ""
polenta.diet_list = "healthy"
polenta.save

zuppa = antipasti.items.create(
  name: "Zuppa Del Di",
  price: "10.00",
  photo_url: "",
  description: "soup of the day",
  featured: false)

carpaccio = antipasti.items.create(
  name: "Carpaccio Di Bresaola",
  price: "13.00",
  photo_url: "",
  description: "With parmigiano, olio di oliva, limone",
  featured: false)

carpaccio.taste_list = "salty"
carpaccio.ingredient_list = "olives, lemon"
carpaccio.save

u1.favorites.create(item_id: carpaccio.id)
u2.favorites.create(item_id: carpaccio.id)
u3.favorites.create(item_id: carpaccio.id)

insalata = antipasti.items.create(
  name: "Carpaccio Di Bresaola",
  price: "14.00",
  photo_url: "",
  description: "With spicy sopressata, balsamiv, pecorino cheese, caramelized walnuts",
  featured: false)

insalata.taste_list = "spicy, salty"
insalata.ingredient_list = "cheese, walnuts"
insalata.diet_list = ""
insalata.save

u1.favorites.create(item_id: insalata.id)

insaltaverde = antipasti.items.create(
  name: "Insalta Verde Del Mercato",
  price: "15.00",
  photo_url: "http://www.daclaudionyc.com/assets/food_05.jpg",
  description: "With pickled beets & squash, radish, pear, cabernet vinegar, pumpkin seeds",
  featured: true)

insaltaverde.taste_list = "salty"
insaltaverde.ingredient_list = "beets, pumpkin, pear"
insaltaverde.diet_list = "vegetarian, healthy"
insaltaverde.save

arugala = antipasti.items.create(
  name: "Insalata Di Arugula",
  price: "12.00",
  photo_url: "http://www.daclaudionyc.com/assets/food_02.jpg",
  description: "With cherry tomato, parmigiano",
  featured: true)

arugala.taste_list = ""
arugala.ingredient_list = "tomato, cheese"
arugala.diet_list = "vegetarian, healthy"
arugala.save

alpo = antipasti.items.create(
  name: "Grilled Octopus, with hebed sauteed potatoes, tggiasca olive tapenade",
  price: "18.00",
  photo_url: "",
  description: "Grilled Octopus, with hebed sauteed potatoes, tggiasca olive tapenade",
  featured: false)

alpo.taste_list = ""
alpo.ingredient_list = "octopus"
alpo.diet_list = ""
alpo.save

crudo = antipasti.items.create(
  name: "Palpo",
  price: "18.00",
  photo_url: "",
  description: "raw fish",
  featured: false)

crudo.taste_list = "salty"
crudo.ingredient_list = "fish"
crudo.diet_list = "healthy"
crudo.save

melanzane = antipasti.items.create(
  name: "Melanzane",
  price: "15.00",
  photo_url: "",
  description: "eggplant alla parmigana",
  featured: false)

melanzane.taste_list = "salty"
melanzane.ingredient_list = "eggplant"
melanzane.diet_list = ""
melanzane.save

fritto = antipasti.items.create(
  name: "Fritto Misto",
  price: "18.00",
  photo_url: "",
  description: "fried calamari, white fish, prawns with parsnip polenta for dinner only",
  featured: false)

fritto.taste_list = "salty"
fritto.ingredient_list = "prawns, calamari, fish"
fritto.diet_list = "healthy"
fritto.save

u1.favorites.create(item_id: fritto.id)
u2.favorites.create(item_id: fritto.id)
u3.favorites.create(item_id: fritto.id)

trofie = primi.items.create(
  name: "Trofie",
  price: "21.00",
  photo_url: "",
  description: "With lamb ragu",
  featured: false)

trofie.taste_list = "salty"
trofie.ingredient_list = "lamb"
trofie.diet_list = "healthy"
trofie.save

linguine = primi.items.create(
  name: "Linguine Nere Housemade Black Linguine",
  price: "23.00",
  photo_url: "http://www.daclaudionyc.com/assets/food_09.jpg",
  description: "With shrimp in sweet pepper sauce",
  featured: true)

linguine.taste_list = "sweet, spicy"
linguine.ingredient_list = "shrimp, pasta"
linguine.diet_list = ""
linguine.save

spaghetti = primi.items.create(
  name: "Spaghetti Alle Vongole with Clams",
  price: "19.00",
  photo_url: "",
  description: "",
  featured: false)

spaghetti.taste_list = ""
spaghetti.ingredient_list = "clams, pasta"
spaghetti.diet_list = ""
spaghetti.save

fettuccine = primi.items.create(
  name: "Fettuccine Casalinghe Al Pesto",
  price: "18.00",
  photo_url: "",
  description: "With shrimp in sweet pepper sauce",
  featured: false)

fettuccine.taste_list = "sweet, spicy"
fettuccine.ingredient_list = "shrimp, pasta"
fettuccine.diet_list = ""
fettuccine.save

gnocchi = primi.items.create(
  name: "Gnocchi Di Melanzane",
  price: "19.00",
  photo_url: "",
  description: "With speck and asiago cheese",
  featured: false)

gnocchi.taste_list = "salty"
gnocchi.ingredient_list = "speck, cheese"
gnocchi.save

u2.favorites.create(item_id: gnocchi.id)

spaghetti2 = primi.items.create(
  name: "Spaghetti with Baby Octopus and Preserved Lemon",
  price: "26.00",
  photo_url: "",
  description: "Duck and endive malfatti",
  featured: false)

spaghetti2.taste_list = ""
spaghetti2.ingredient_list = "duck, octopus, lemon"
spaghetti2.diet_list = ""
spaghetti2.save

risotto = primi.items.create(
  name: "Risotto Del Di",
  price: "8.00",
  photo_url: "",
  description: "",
  featured: false)

bucatini = primi.items.create(
  name: "Bucatini Arrabbiata",
  price: "16.00",
  photo_url: "http://www.daclaudionyc.com/assets/food_06.jpg",
  description: "With spicy tomato sauce",
  featured: true)

bucatini.taste_list = "spicy"
bucatini.ingredient_list = ""
bucatini.diet_list = ""
bucatini.save

spaghettic = primi.items.create(
  name: "Spaghetti Carbonara Dello Chef",
  price: "19.00",
  photo_url: "",
  description: "",
  featured: false)

spaghettic.taste_list = ""
spaghettic.ingredient_list = "pasta"
spaghettic.diet_list = ""
spaghettic.save

garganelli = primi.items.create(
  name: "Garganelli Alla Bolognese",
  price: "19.00",
  photo_url: "",
  description: "",
  featured: false)

garganelli.taste_list = "salty"
garganelli.ingredient_list = "bolognese"
garganelli.diet_list = ""
garganelli.save

u2.favorites.create(item_id: garganelli.id)
u3.favorites.create(item_id: garganelli.id)

polloa = secondi.items.create(
  name: "Pollo Alla Diavola (For 2)",
  price: "32.00",
  photo_url: "",
  description: "With shallot potato puree",
  featured: false)

polloa.taste_list = ""
polloa.ingredient_list = "chicken"
polloa.diet_list = ""
polloa.save

bistecca = secondi.items.create(
  name: "Bistecca Tagliata",
  price: "32.00",
  photo_url: "",
  description: "Sliced sirloin steak. With cabernet vinegar reduction and herbed sauteed potatoes",
  featured: false)

bistecca.taste_list = ""
bistecca.ingredient_list = "steak"
bistecca.diet_list = ""
bistecca.save

grigliata = secondi.items.create(
  name: "Grigliata Mista Di Pesce",
  price: "27.00",
  photo_url: "",
  description: "Grilled mixed fish with eggplant fennel",
  featured: false)

grigliata.taste_list = ""
grigliata.ingredient_list = "fish, eggplant"
grigliata.diet_list = ""
grigliata.save

u1.favorites.create(item_id: grigliata.id)

pesce = secondi.items.create(
  name: "Pesce Del Di",
  price: "30.00",
  photo_url: "http://www.daclaudionyc.com/assets/food_01.jpg",
  description: "Choice of grilled or oven roasted fish of the day",
  featured: true)

pesce.taste_list = ""
pesce.ingredient_list = "fish"
pesce.diet_list = ""
pesce.save

stinco = secondi.items.create(
  name: "Stinco Di Maiale Pork Shank",
  price: "26.00",
  photo_url: "http://s3-media3.fl.yelpcdn.com/bphoto/RyhElWAglLxfNoBOajT7kg/o.jpg",
  description: "With honey crisp apple cipollini agrodolce",
  featured: true)

stinco.taste_list = ""
stinco.ingredient_list = "apple, pork"
stinco.diet_list = ""
stinco.save

u1.favorites.create(item_id: stinco.id)
u2.favorites.create(item_id: stinco.id)

pollo = secondi.items.create(
  name: "Pollo Alla Milanese",
  price: "21n.00",
  photo_url: "",
  description: "With arugula salad",
  featured: false)

pollo.taste_list = ""
pollo.ingredient_list = "chicken, arugula"
pollo.diet_list = ""
pollo.save

scaloppine = secondi.items.create(
  name: "Scaloppine Pollo",
  price: "21.00",
  photo_url: "",
  description: "Asmish chicken with lemon, white wine, capers",
  featured: false)

scaloppine.taste_list = ""
scaloppine.ingredient_list = "chicken, lemon"
scaloppine.diet_list = "healthy"
scaloppine.save

gelato = dolci.items.create(
  name: "Gelato",
  price: "9.00",
  photo_url: "http://www.daclaudionyc.com/assets/desset_01.jpg",
  description: "Vanilla or nocciola",
  featured: true)

gelato.taste_list = "sweet"
gelato.ingredient_list = "dairy"
gelato.diet_list = "vegetarian"
gelato.save

sorbetto = dolci.items.create(
  name: "Sorbetto",
  price: "9.00",
  photo_url: "",
  description: "Cioccolato or pera",
  featured: false)

sorbetto.taste_list = "sweet"
sorbetto.ingredient_list = "dairy"
sorbetto.diet_list = "vegetarian"
sorbetto.save

tora = dolci.items.create(
  name: "Torta Di Cioccolato & Ricotta",
  price: "10.00",
  photo_url: "http://www.daclaudionyc.com/assets/desset_02.jpg",
  description: "With ricotta gelato",
  featured: true)

tora.taste_list = "sweet"
tora.ingredient_list = "dairy"
tora.diet_list = "vegetarian"
tora.save
u1.favorites.create(item_id: tora.id)

frutti = dolci.items.create(
  name: "Frutti Di Bosco Di Stagione",
  price: "12.00",
  photo_url: "",
  description: "Mascarpone, amaretto",
  featured: false)

frutti.taste_list = "sweet"
frutti.ingredient_list = "dairy"
frutti.diet_list = "vegetarian"
frutti.save

tiramisu = dolci.items.create(
  name: "Tiramisu",
  price: "10.00",
  photo_url: "",
  description: "",
  featured: false)

tiramisu.taste_list = "sweet"
tiramisu.ingredient_list = "dairy"
tiramisu.diet_list = "vegetarian"
tiramisu.save

crostatina = dolci.items.create(
  name: "Crostatina Di Stagione Seasonal Fruit Tart",
  price: "12.00",
  photo_url: "",
  description: "",
  featured: false)

crostatina.taste_list = "sweet"
crostatina.ingredient_list = "dairy"
crostatina.diet_list = "vegetarian"
crostatina.save

###############################################################################
