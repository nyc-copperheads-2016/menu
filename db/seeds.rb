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
oysters.taste_list = "umani, sour, salty"
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
mushrooms.taste_list = "umani"
mushrooms.ingredient_list = "mushroom"
mushrooms.save



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

clam = extras.items.create(name: "New England Clam Chowder", price: "9.00", photo_url: "http://s3-media4.fl.yelpcdn.com/bphoto/bHTtpvjf5eYRmUHKBQsSow/258s.jpg")
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


restaurants_with_menus = Curl.post("https://api.locu.com/v2/venue/search", {
  api_key: Rails.application.secrets.locu_api_key,
  fields: [
    "locu_id",
    "name"
  ],
  venue_queries: [
  {
    location: {
      geo: {
        '$in_lat_lng_radius'.to_sym => [40.7061972,-74.0123236, 200]
      }
    },
    menus: { '$present'.to_sym => true }
  }
]}.to_json)

venues = JSON.parse(restaurants_with_menus.body_str)["venues"]

venues.each do |v|
  r = Restaurant.create!(name: v['name'])

  r_details_json = Curl.post("https://api.locu.com/v2/venue/search", {
    api_key: Rails.application.secrets.locu_api_key,
    fields: [
      "name",
      "menus",
      "categories"
    ],
  venue_queries: [{ locu_id: v["locu_id"] }]}.to_json)

  menus = JSON.parse(r_details_json.body_str)['venues'].first['menus']

  menus.each do |menu|
    m = r.menus.create!(name: menu['menu_name'])
    menu['sections'].each do |section|
      section['subsections'].each do |subsection|
        if !(subsection['subsection_name']).blank?
          s = m.sections.create!(name: subsection['subsection_name'])
          subsection['contents'].each do |content|
            if !(content['name'].blank?)
              i = s.items.create!(name: content['name'],
                                     price: content['price'],
                                     description: content['description'])
            else
              puts "Skipping blank content"
            end
          end
        else
          puts "Not saving blank subsection"
        end
      end
    end
  end
end

User.create(username: "admin", email: "admin@example.com", password: "asdfasdf")

2.times do
  FactoryGirl.create(:user)
end

u = FactoryGirl.create(:user)

2.times do
  r = FactoryGirl.create(:restaurant)

  2.times do
    FactoryGirl.create(:location, restaurant: r)
  end

  2.times do
    m = FactoryGirl.create(:menu, restaurant: r)

    3.times do
      s = FactoryGirl.create(:section, menu: m)

      4.times do
        i = FactoryGirl.create(:item, section: s)

        diets = %w(vegan vegetarian halal kosher)
        i.diet_list = diets.sample(2).join(", ")

        tastes = %w(sweet spicy sour)
        i.taste_list = tastes.sample(2).join(", ")

        ingredients = %w(chicken beef fish nuts eggs)
        i.ingredient_list = ingredients.sample(2).join(", ")

        i.save
      end

      FactoryGirl.create(:favorite, user: u, item: Item.last)
    end
  end
end
