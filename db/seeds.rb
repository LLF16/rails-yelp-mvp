# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning tables..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."
bristol = Restaurant.create(name: "Epicure", address: "rue de la liberté, Paris", phone_number: "0234638", category: "french")
tim = Restaurant.create(name: "Tim Raue", address: "Checkpoint Charlie, Berlin", phone_number: "11111111", category: "chinese")
quick = Restaurant.create(name: "Quick", address: "somewhere, London", phone_number: "3453333", category: "belgian")
burger_king = Restaurant.create(name: "Burger King", address: "Grand Place, Brussels", phone_number: "0000000", category: "french")
giardino = Restaurant.create(name: "Giardino", address: "here street, town", phone_number: "1010101", category: "chinese")

puts "Creating reviews..."
Review.create(content: "super cool", rating: 1, restaurant_id: 1)
Review.create(content: "super cool too", rating: 2, restaurant_id: 2)
Review.create(content: "super cool yeah", rating: 3, restaurant_id: 3)
Review.create(content: "super cool ok", rating: 3, restaurant_id: 4)
Review.create(content: "super cool cool", rating: 4, restaurant_id: 5)

puts "Done!"
