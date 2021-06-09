# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
ny = { name: "NY flat", address: "7 Boundary St, NY E2 7JE", description: "lovely flat", price_per_night: 50, number_of_guests: 3}
london = { name: "London flat", address: "7 Boundary St, London E2 7JE", description: "lovely flat", price_per_night: 50, number_of_guests: 3}
dubai = { name: "Dubai flat", address: "7 Boundary St, Dubai E2 7JE", description: "lovely flat", price_per_night: 50, number_of_guests: 3}
paris = { name: "Paris flat", address: "7 Boundary St, Paris E2 7JE", description: "lovely flat", price_per_night: 50, number_of_guests: 3}

[ london, ny, dubai, paris ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
