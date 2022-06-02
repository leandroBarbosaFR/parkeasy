# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
AddressParking.destroy_all
Parking.destroy_all
User.destroy_all
# Review.destroy_all

#seed user
user_1 = User.create!(first_name: "leandro", last_name: "barbosa", email: "leandrobarbosa@parkeasy.fr", mobile: "0778861512", password: "123456", password_confirmation: "123456")
user_2 = User.create!(first_name: "lionel", last_name: "chamouilli", email: "lionelchamouilli@parkeasy.fr", mobile: "0778861512", password: "123456", password_confirmation: "123456")
user_3 = User.create!(first_name: "dylan", last_name: "piro", email: "dylane@parkeasy.fr", mobile: "0778861512", password: "123456", password_confirmation: "123456")
user_4 = User.create!(first_name: "jean-loup", last_name: "perez", email: "jeanloup@parkeasy.fr", mobile: "0778861512", password: "123456", password_confirmation: "123456")
user_5 = User.create!(first_name: "jean-gui", last_name: "vicente", email: "jeangui@parkeasy.fr", mobile: "0778861512", password: "123456", password_confirmation: "123456")

#seed parking images
img_parking_1 = URI.open("https://res.cloudinary.com/leandrobarbosalemos/image/upload/v1653924518/placeParking_box.jpg")
img_parking_2 = URI.open("https://res.cloudinary.com/leandrobarbosalemos/image/upload/v1653925349/placeParking_ext.jpg")
img_parking_3 = URI.open("https://res.cloudinary.com/leandrobarbosalemos/image/upload/v1653924257/placeParking_voitureElec.jpg")
img_parking_4 = URI.open("https://res.cloudinary.com/leandrobarbosalemos/image/upload/v1653924337/placeParking_chargeur.jpg")
img_parking_5 = URI.open("https://res.cloudinary.com/leandrobarbosalemos/image/upload/v1653924305/placeParking_van.jpg")

#seed parking
parking_1 = Parking.create!(title: "Parking La Rotonde", description: "Place de parking très bien situé dans le centre ville d'aix en provence.", price: 8, available: "true", user: user_1)
parking_1.photo.attach(io: img_parking_1, filename: 'placeParking_box.jpg', content_type: 'image/jpg')
address_parking_1 = AddressParking.create(address: '2 rue Lapierre', post_code:'13100', city: 'Aix-en-Provence', parking: parking_1)

parking_2 = Parking.create!(title: "Parking Rue d'Italie", description: "A louer une place de parking extérieure dans la résidence sécurisée l'italien.", price: 9, available: "true", user: user_2)
parking_2.photo.attach(io: img_parking_2, filename: 'placeParking_ext.jpg', content_type: 'image/jpg')
address_parking_2 = AddressParking.create(address: "24 rue d'Italie", post_code: '13100', city: 'Aix-en-Provence', parking: parking_2)

parking_3 = Parking.create!(title: "Parking Cours Sextius", description: "Location d'une place de parking avec chargeur pour voiture electrique.", price: 11, available: "true", user: user_3)
parking_3.photo.attach(io: img_parking_3, filename: 'placeParking_voitureElec.jpg', content_type: 'image/jpg')
address_parking_3 = AddressParking.create(address: '44 cours Sextius', post_code: '13100', city: 'Aix-en-Provence', parking: parking_3)

parking_4 = Parking.create!(title: "Parking Le Cezanne", description: "Location d'une place de parking souterrain avec possibilité de charger votre voiture electrique.", price: 12, available: "true", user: user_4)
parking_4.photo.attach(io: img_parking_4, filename: 'placeParking_chargeur.jpg', content_type: 'image/jpg')
address_parking_4 = AddressParking.create(address: '12 rue Cardinale', post_code: '13100', city: 'Aix-en-Provence', parking: parking_4)

parking_5 = Parking.create!(title: "Parking Du Roi René", description: "Place parking pour van.", price: 13, available: "true", user: user_5)
parking_5.photo.attach(io: img_parking_5, filename: 'placeParking_van.jpg', content_type: 'image/jpg')
address_parking_5 = AddressParking.create(address: '64 boulevard du Roi René', post_code: '13100', city: 'Aix-en-Provence', parking: parking_5)

# #seed rating
# parking_1.ratings << Review.create(rating: 5, review: "Emplacement ideal pour une journée de shopping.")
# parking_1.ratings << Review.create(rating: 5, review: "Emplacement ideal pour une journée de shopping.")
# parking_2.ratings << Review.create(rating: 5, review: "emplacement avec un access pour persone à mobilité reduite .")
# parking_3.ratings << Review.create(rating: 4, review: "Très content d'avoir un parking ou je peux recharger ma voiture.")
# parking_4.ratings << Review.create(rating: 3, review: "Parking un peu petit mais niveau securité rien a dire.")
# parking_5.ratings << Review.create(rating: 4, review: "très bonne idée de louer sa place pour des personnes avec un van comme moi.")
