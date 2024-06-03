require 'faker'

Flat.destroy_all
puts 'Creating 5 flats...'

5.times do
  Flat.create!(
    name: Faker::Address.unique.community,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(50..200),
    number_of_guests: rand(1..6),
    image_url: 'https://source.unsplash.com/random/800x600?house'
  )
end
puts 'Finished !'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
