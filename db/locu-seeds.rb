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
              i = s.items.create!(name: content['name'], price: content['price'], description: content['description'])
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