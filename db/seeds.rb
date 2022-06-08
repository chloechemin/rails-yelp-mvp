# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "4563 4637", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "3245 7483", category: "italian" }
dominos = { name: "Dominos", address: "34 Flinders St, Melbourne 3000", phone_number: "8735 3452", category: "belgian" }
maccas = { name: "MacDonalds", address: "565 Gouger St, Sydney 2000", phone_number: "04 53 768 493", category: "french" }
gaucho = { name: "Gaucho", address: "20 Hobsons St, Adelaide 5000", phone_number: "4567 8740", category: "japanese" }


[ dishoom, pizza_east, dominos, maccas, gaucho ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
