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
User.new (
    email: "elon.musk@tesla.com",
    encrypted_password: "yellow&RED123",
    phone_number: "0614514503",
    first_name: "Elon",
    last_name: "Musk",
)
puts "Created #{User.count} users" 

##########################################################################################################
# TRANSPORTS

puts "Cleaning the transport DB ..."
Transport.destroy_all
puts "Creating the transport DB"
Transport.new (
    type: "Rocket",
    name: "Falcom -X",
    description: "The best rocket you could ever dream of",
    price: "1000000",
)

Transport.new (
    type: "Car",
    name: "BMW",
    description: "standard German car",
    price: "50000",
)

Transport.new (
    type: "Bicycle",
    name: "Decathlon model S",
    description: "The poor's bike",
    price: "200",
)

puts "Created #{Transport.count} transports" 
