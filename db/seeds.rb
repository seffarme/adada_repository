# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


##########################################################################################################
# CLEANING

puts "Cleaning the booking DB ..."
Booking.destroy_all

puts "Cleaning the transport DB ..."
Transport.destroy_all

puts "Cleaning the user DB ..."
User.destroy_all

##########################################################################################################
# USER

puts "Creating the user DB"
marc_simoncini = User.new({
    email: "marc.simoncini@angellbike.com",
    password: "123456",
    phone_number: 0614514503,
    first_name: "Marc",
    last_name: "Simoncini"}
)
marc_simoncini.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/marc_simoncini.jpg"), filename: 'marc_simoncini.jpg', content_type: 'image/jpg')
marc_simoncini.save

elon_musk = User.new({
    email: "elon.musk@tesla.com",
    password: "123456",
    phone_number: 0614514503,
    first_name: "Elon",
    last_name: "Musk"}
)
elon_musk.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/elon_musk.jpg"), filename: 'elon_musk.jpg', content_type: 'image/jpg')
elon_musk.save

kimi_raikkonen = User.new({
    email: "kimi.raikkonen@f1.com",
    password: "123456",
    phone_number: 0614514503,
    first_name: "Kimi",
    last_name: "Räikkönen"}
)
kimi_raikkonen.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/kimi_raikkonen.jpg"), filename: 'kimi_raikkonen.jpg', content_type: 'image/jpg')
kimi_raikkonen.save

monsieur_patate = User.new({
    email: "mister.potato@potato.com",
    password: "123456",
    phone_number: 0614514503,
    first_name: "Mister",
    last_name: "Potato"}
)
monsieur_patate.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/monsieur_patate.jpg"), filename: 'monsieur_patate.jpg', content_type: 'image/jpg')
monsieur_patate.save

mario = User.new({
    email: "mario@mario.com",
    password: "123456",
    phone_number: 0614514503,
    first_name: "Super",
    last_name: "Mario"}
)
mario.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/mario.jpg"), filename: 'mario.jpg', content_type: 'image/jpg')
mario.save

david = User.new({
    email: "david@david.com",
    password: "123456",
    phone_number: 0614514503,
    first_name: "David ",
    last_name: "Hasselhoff"}
)
david.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/david.jpg"), filename: 'david.jpg', content_type: 'image/jpg')
david.save

puts "Created #{User.count} users"

#########################################################################################################
# TRANSPORTS
puts "Creating the transport DB"
rocket = Transport.new({
    category: "Rocket",
    name: "Falcon -X",
    description: "The best rocket you could ever dream of",
    price: "1000000",
    address: "SpaceX South Texas Launch Site",
})
rocket.owner = elon_musk
rocket.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/falcon_x_rocket.jpg"), filename: 'falcon_x_rocket.jpg', content_type: 'image/png')
rocket.save


car = Transport.new( {
    category: "Car",
    name: "BMW Serie 7",
    description: "Standard German car",
    price: "50000",
    address: "Munich"
})
car.owner = elon_musk
car.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/bmw_serie_7.jpg"), filename: 'bmw_serie_7.jpg', content_type: 'image/jpg')
car.save

bike = Transport.new( {
    category: "Bicycle",
    name: "Decathlon model S",
    description: "The poor man's bike",
    price: "20",
    address: "Grenoble"
}
)
bike.owner = elon_musk
bike.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/decathlon_bicycle.jpg"), filename: 'decathlon_bicycle.jpg', content_type: 'image/jpg')
bike.save

angell = Transport.new( {
    category: "Bicycle",
    name: "Angell Bike",
    description: "The french smart Bike by Marc Simoncini - Autonomy 70km - complete charge 2h - automatic lockin",
    price: "100",
    address: "Bassin d'Arcachon"
})
angell.owner = marc_simoncini
angell.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/angell_bike.jpg"), filename: 'angell_bike.jpg', content_type: 'image/jpg')
angell.save

formule = Transport.new( {
    category: "Car",
    name: "F1",
    description: "Drive with no noise and no pollution - be discret with this special car",
    price: "10000",
    address: "Monaco"
}
)
formule.owner = kimi_raikkonen
formule.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/F1.jpg"), filename: 'F1.jpg', content_type: 'image/jpg')
formule.save

flyingpotato = Transport.new( {
    category: "Other",
    name: "Flying Potato",
    description: "Go Back to childhood and dream big",
    price: "1",
    address: "Chemin de Rosarge, 69140 Vancia"
}
)
flyingpotato.owner = monsieur_patate
flyingpotato.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/flyingpotato.jpg"), filename: 'flyingpotato.jpg', content_type: 'image/jpg')
flyingpotato.save

ane = Transport.new( {
    category: "Other",
    name: "Ane",
    description: "Ride a donkey and go far far away",
    price: "15",
    address: "Fes, Morocco"
}
)
ane.owner = monsieur_patate
ane.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/ane.jpg"), filename: 'ane.jpg', content_type: 'image/jpg')
ane.save


airbus = Transport.new( {
    category: "Other",
    name: "Airbus A380",
    description: "Do a long flight and dream big ",
    price: "10000",
    address: "Chester, UK"
})
airbus.owner = elon_musk
airbus.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/airbus.jpg"), filename: 'airbus.jpg', content_type: 'image/jpg')
airbus.save


tracteur = Transport.new( {
    category: "Car",
    name: "Tracteur",
    description: "Feel like a magic farmer",
    price: "15",
    address: "Hyderabad, India"
})
tracteur.owner = monsieur_patate
tracteur.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/tracteur.jpg"), filename: 'tracteur.jpg', content_type: 'image/jpg')
tracteur.save


tricycle = Transport.new( {
    category: "Bicycle",
    name: "Tricycle",
    description: "Feel like a kid and dream big on your red bike",
    price: "15",
    address: "Childhood Home of Ringo Starr, 9 Madryn St, Liverpool, England L8 3UQ, United Kingdom"
}
)
tricycle.owner = kimi_raikkonen
tricycle.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/tricycle.jpg"), filename: 'tricycle.jpg', content_type: 'image/jpg')
tricycle.save

mario_kart = Transport.new( {
    category: "Car",
    name: "Kart",
    description: "go-kart-style racing and feel free",
    price: "15",
    address: "Tokyo Bay, Japan"
}
)
mario_kart.owner = mario
mario_kart.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/mario_kart.jpg"), filename: 'mario_kart.jpg', content_type: 'image/jpg')
mario_kart.save

kit = Transport.new( {
    category: "Car",
    name: "Kart",
    description: "go-kart-style racing and feel free",
    price: "15",
    address: "Nagoya, Japan"
}
)
kit.owner = mario
kit.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/kit.jpg"), filename: 'kit.jpg', content_type: 'image/jpg')
kit.save

puts "Created #{Transport.count} transports"


#   Character.create(name: 'Luke', movie: movies.first)


# require "open-uri"

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')

# User.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# puts User.last.photo.attached?

