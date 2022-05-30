# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Parking.destroy_all
User.destroy_all
Rating.destroy_all

#seed user
user_1 = User.create!(first_name: "leandro", last_name: "barbosa", email: "leandrobarbosa@parkeasy.fr", password: "123456", password_confirmation: "123456")
user_2 = User.create!(first_name: "lionel", last_name: "chamouilli", email: "lionelchamouilli@parkeasy.fr", password: "123456", password_confirmation: "123456")

#seed parking images
img_parking_1 = URI.open("https://res.cloudinary.com/ddkm6bg5l/image/upload/v1648550694/DeadSingerz/TupacShakur_dana-lixenberg_uhyuxo.jpg")

#seed parking
parking_1 = Parking.create!(name: "2pac", category: "rap", price: 500, bio: "Considered one of the most influential rappers of all time, from new york east coast.", death_year: 1996, birth_year: 1971, user: user_1)
parking_1.photo.attach(io: img_category_1, filename: '2Pac.png', content_type: 'image/png')

#seed rating
category_1.ratings << Rating.create(rating: 3, review: "plus de la balle que celles qu il a recu.")
