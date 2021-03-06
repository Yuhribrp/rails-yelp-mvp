# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning up database...'
Restaurant.destroy_all
puts 'database is clean!'

puts "Creating 5 restaurants...."

5.times do
	restaurant = Restaurant.create(
		name: Faker::TvShows::SiliconValley.company,
		address: Faker::Address.city,
		category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
		rating: rand(1..5,)
		phone_number: Faker::PhoneNumber.cell_phone
	)
	puts "Restaurant #{restaurant.id} is created"
end

puts "Finish !"