# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '02345 67 89', category: 'chinese' }
pizza_east =  { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '02345 22 89', category: 'italian' }
sushiz = { name: 'Sushiz', address: '1 rue Americaine, Brussels 1000', phone_number: '02343 67 89', category: 'japanese' }
marcel = { name: 'Chez Marcel', address: '81 avenue du pré, Brussels 1000', phone_number: '02345 67 77', category: 'belgian' }
burger_house = { name: 'Burger House', address: '81 avenue de la liberté, Brussels 1000', phone_number: '02345 67 11', category: 'french' }

[dishoom, pizza_east, sushiz, marcel, burger_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
