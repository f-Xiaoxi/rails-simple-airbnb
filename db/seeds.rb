# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "clearing database"
# Flat.destroy.all

puts 'creating database...'

5.times do
  Flat.create!(
    name: Faker::FunnyName.three_word_name,
    address: Faker::Address.street_address,
    description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
    price_per_night: Faker::Number.between(from: 1, to: 1000),
    number_of_guests: rand(1..10)
  )
end

puts 'done'
