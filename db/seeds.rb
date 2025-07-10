# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory.',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Stylish Apartment in Tokyo',
  address: 'Shibuya, Tokyo, Japan',
  description: 'Modern apartment in the heart of Tokyo with city views, queen bed, and fast WiFi.',
  price_per_night: 120,
  number_of_guests: 2
)

Flat.create!(
  name: 'Cozy Cabin in the Woods',
  address: '123 Forest Trail, Hokkaido',
  description: 'Rustic charm meets modern comfort. Enjoy a peaceful getaway in this charming wood cabin.',
  price_per_night: 90,
  number_of_guests: 4
)

Flat.create!(
  name: 'Luxury Beachfront Villa',
  address: '456 Sunset Blvd, Okinawa',
  description: 'Stunning ocean views, private pool, and modern amenities. Perfect for families or couples.',
  price_per_night: 250,
  number_of_guests: 6
)

puts "Flats created!"
