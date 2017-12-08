# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "rubygems"
require "faker"
locations = Location.create([
  {name: "sunnyvale"},
  {name: "san jose"},
  {name: "santa clara"},
  {name: "belmont"},
  {name: "san carlos"},
])

locations.each do |location|
  3.times do
    location.homes << Home.create(
      city: Faker::Address.city,
      street_name: Faker::Address.street_name,
      building_number: Faker::Address.building_number,
      zipcode: Faker::Address.zip,
      postcode: Faker::Address.postcode,
      state: Faker::Address.state,
      country: Faker::Address.country
    )
  end
end


