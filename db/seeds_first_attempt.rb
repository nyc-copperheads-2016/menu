restaurants_with_menus = Curl.post("https://api.locu.com/v2/venue/search", {
  "api_key" : "<env variable>",
  "fields" : [
    "locu_id",
    "name"
  ],
  "venue_queries" : [
    {
      "location": {
        "geo": {
          "$in_lat_lng_radius" : [40.7061972,-74.0123236, 200]
        }
      },
      "menus" : { "$present" : true }
    }
  ]
})

# section_name = our menu.name
# subsection_name = our section.name

x = 1
restaurants_with_menus.venues.each do |v|
  # r = Restaurant.create(name: v.name)

  single_data = Curl.post("https://api.locu.com/v2/venue/search", {
  "api_key" : "<env variable>",
  "fields" : [
    "name",
    "description",
    "website_url",
    "menus",
    "location",
    "categories"
  ],
  "venue_queries" : [{ "locu_id": v.locu_id }]
  })

  output = File.open("file#{x}", "w")
  output << single_data
  output.close
  x += 1

  # name = single_data["venues"][0]["name"]
  # menus = single_data["venues"][0]["menus"]

  # menus.each do |menu|
  #   menu.sections.each do |section|
  #     m = menu.sections.create(name: section_name)
  #     m.sections.create()
  #     subs_name = s.subsection_name
  #     s.contents.each do |c|
  #       c_text = c.text
  #     end
  #   end
  # end

end
