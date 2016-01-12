FactoryGirl.define do
  factory :user do
    username   { Faker::Internet.user_name(5) }
    email      { Faker::Internet.safe_email }
    password   'password'
  end

  factory :location do
    address    { Faker::Address.street_address }
    city       { Faker::Address.city }
    state      { Faker::Address.state_abbr }
    zip        { Faker::Address.zip_code }
    latitude   { Faker::Address.latitude }
    longitude  { Faker::Address.longitude }
    association :restaurant
  end

  factory :restaurant do
    name        { Faker::Company.name }
    website     { Faker::Internet.url }
    description { Faker::Company.bs }
    logo_url    { Faker::Company.logo }
  end

  factory :menu do
    name        { Faker::University.name }
    association :restaurant
  end

  factory :section do
    name        { Faker::Team.name }
    association :menu
  end

  factory :item do
    name        { Faker::Commerce.product_name }
    price       { Faker::Commerce.price }
    photo_url   { Faker::Company.logo }
    description { Faker::Company.buzzword }
    association :section
  end

  factory :favorite do
    association :user
    association :item
  end
end
