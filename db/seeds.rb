# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##########################################################################################################
# USERS

puts "Cleaning the user DB ..."
User.destroy_all
puts "Creating the user DB"
elon_musk = User.create({
    email: "elon.musk@tesla.com",
    password: "123456",
    phone_number: 0614514503,
    first_name: "Elon",
    last_name: "Musk"}
)
puts "Created #{User.count} users" 

##########################################################################################################
# TRANSPORTS

puts "Cleaning the transport DB ..."
Transport.destroy_all
puts "Creating the transport DB"
rocket = Transport.new({
    category: "Rocket",
    name: "Falcom -X",
    description: "The best rocket you could ever dream of",
    price: "1000000"}
)
rocket.user = elon_musk
rocket.save

car = Transport.new( {
    category: "Car",
    name: "BMW",
    description: "standard German car",
    price: "50000"}
)
car.user = elon_musk
car.save

bike = Transport.new( {
    category: "Bicycle",
    name: "Decathlon model S",
    description: "The poor's bike",
    price: "200"}
)
bike.user = elon_musk
bike.save

puts "Created #{Transport.count} transports" 
=======
#   Character.create(name: 'Luke', movie: movies.first)
