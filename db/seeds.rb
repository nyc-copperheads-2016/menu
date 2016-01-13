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

onion = bites.items.create(name: "Classic Onion Soup", price: "13.00")
yellowfin = bites.items.create(name: "Yellowfin Tuna Tartare", price: "18.00")
mussels = bites.items.create(name: "Mussel Pot", price: "17.00")

kale = salads.items.create(name: "Local Kale", price: "14.00")
beets = salads.items.create(name: "Roasted Beets", price: "15.00")

sausage = flatbreads.items.create(name: "Sausage", price: "16.00")
shrimp = flatbreads.items.create(name: "Spicy Shrimp", price: "16.00")

jumbo = raw.items.create(name: "Jumbo Shrimp (each)", price: "6.00")
oysters = raw.items.create(name: "East Coast Oysters (each)", price: "3.00")

salmon = large.items.create(name: "Scottish Salmon", price: "28.00")
chicken = large.items.create(name: "Roasted Amish Chicken Breast", price: "25.00")

fries = sides.items.create(name: "Hand-Cut Fries", price: "8.00")
mushrooms = sides.items.create(name: "Foraged Mushrooms", price: "9.00")

onion.diet_list = "vegetarian"
onion.taste_list = "savory"
onion.ingredient_list = "onion"
onion.save

yellowfin.diet_list = "pescatarian"
yellowfin.taste_list = "savory"
yellowfin.ingredient_list = "fish, ginger, cilantro, truffle soy"
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
jumbo.ingredient_list = "shrimp"
jumbo.save

oysters.diet_list = "pescatarian"
oysters.taste_list = "umani, sour, salty"
oysters.ingredient_list = "shellfish"
oysters.save

salmon.ingredient_list = "salmon, lentils, mustard"
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

5.times do
  FactoryGirl.create(:user)
end

u = FactoryGirl.create(:user)

6.times do
  r = FactoryGirl.create(:restaurant)

  3.times do
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
