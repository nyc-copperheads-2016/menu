class User < ActiveRecord::Base
  has_secure_password
  has_many :favorites
  has_many :items, through: :favorites

  validates :username, :password, :email, presence: true
  validates_uniqueness_of :username, :email
  validates :username, length: { minimum: 4 }
  validates :password, length: { minimum: 8 }
  validates :email, :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  def self.local_restaurants(longitude = -74.00937139999999, latitude = 40.7062215, meter_radius = 200)
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
              '$in_lat_lng_radius'.to_sym => [latitude, longitude, meter_radius]
            }
          },
          menus: { '$present'.to_sym => true }
        }
      ]
    }.to_json)

    JSON.parse(restaurants_with_menus.body_str)
  end
end
