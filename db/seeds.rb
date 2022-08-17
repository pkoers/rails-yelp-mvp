# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '+44 20 2883923', category: 'chinese' }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '+44 20 2234433', category: 'italian'}
yakuza = {name: "Yakuza Lisboa", address: "Close to ave. liberdade", phone_number: '+351 20 2883923', category: 'japanese' }
ramiro = {name: "Ramiro", address: "Just google it", phone_number: '+351 946 883 2939', category: 'belgian' }
paris = {name: "Paris", address: "Rua de Franca", phone_number: '+351 945 833 2231', category: 'french' }

[dishoom, pizza_east, yakuza, ramiro, paris].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
