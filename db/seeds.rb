# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all

User.destroy_all
Car.destroy_all
Ride.destroy_all
Point.destroy_all
UserRide.destroy_all

u1 = User.create!(email: 'user1@user.com', password: 'password', firstname: "Jan", lastname: "Nowak")
u2 = User.create!(email: 'user2@user.com', password: 'password', firstname: "Mateusz", lastname: "Nowak")
u3 = User.create!(email: 'user3@user.com', password: 'password', firstname: "Damian", lastname: "Nowak")
u4 = User.create!(email: 'user4@user.com', password: 'password', firstname: "Paweł", lastname: "Nowak")
u5 = User.create!(email: 'user5@user.com', password: 'password', firstname: "Michał", lastname: "Nowak")


Car.create!(owner_id: u1.id, brand: "Mercedes", model: "S-klasse", seats: 5)
Car.create!(owner_id: u2.id, brand: "Audi", model: "A5", seats: 3)
Car.create!(owner_id: u3.id, brand: "Ford", model: "Escort", seats: 2)
Car.create!(owner_id: u4.id, brand: "Toyota", model: "Prius", seats: 4)

r1 = Ride.create!(departure_at: Time.now, owner: u2, description: "Jade na wakacje!")
r2 = Ride.create!(departure_at: Time.now, owner: u2, description: "Jade do babci!")
r3 = Ride.create!(departure_at: Time.now, owner: u3, description: "Jade bo mi się nudzi")
r4 = Ride.create!(departure_at: Time.now, owner: u3, description: "Jade!")
r5 = Ride.create!(departure_at: Time.now, owner: u1, description: "Jade bo tak!")

Point.create!(name: "Poznan", number: 1, ride: r1, latitude: 52.458123, longitude: 16.921312)
Point.create!(name: "Warszawa", number: 2, ride: r1, latitude: 12.458123, longitude: 22.921312)
Point.create!(name: "Gdansk", number: 1, ride: r2, latitude: 32.458123, longitude: 17.921312)
Point.create!(name: "Krakow", number: 2, ride: r2, latitude: 62.458123, longitude: 21.921312)
Point.create!(name: "Sopot", number: 3, ride: r2, latitude: 54.458123, longitude: 18.921312)
Point.create!(name: "Poznan", number: 1, ride: r3, latitude: 52.458123, longitude: 16.921312)
Point.create!(name: "Warszawa", number: 2, ride: r3, latitude: 12.458123, longitude: 22.921312)
Point.create!(name: "Gdansk", number: 1, ride: r4, latitude: 32.458123, longitude: 17.921312)
Point.create!(name: "Krakow", number: 2, ride: r4, latitude: 62.458123, longitude: 21.921312)
Point.create!(name: "Gdansk", number: 1, ride: r5, latitude: 32.458123, longitude: 17.921312)
Point.create!(name: "Krakow", number: 2, ride: r5, latitude: 62.458123, longitude: 21.921312)

UserRide.create!(user_id: u5, ride_id: r1, status: "pending")
