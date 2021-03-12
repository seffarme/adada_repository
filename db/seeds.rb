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
bike.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/urban.webp"), filename: 'urban.webp', content_type: 'image/jpg')
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

speed = Transport.new( {
    category: "Motorcycle",
    name: "Damon Motorcycle",
    description: "Speed with style and travel with class",
    price: "80",
    address: "Paris, France"
}
)
speed.owner = mario
speed.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/speed.jpg"), filename: 'speed.jpg', content_type: 'image/jpg')
speed.save

soft = Transport.new( {
    category: "Motorcycle",
    name: "ARCH Motorcycle",
    description: "soft with delicacy",
    price: "60",
    address: "Ottawa, Canada"
}
)
soft.owner = mario
soft.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/soft.jpg"), filename: 'soft.jpg',
content_type: 'image/jpg')
soft.save

gorgeous = Transport.new( {
    category: "Motorcycle",
    name: "Forbes",
    description: "We can't wait to ride",
    price: "150",
    address: "London, United Kingdom"
}
)
gorgeous.owner = mario
gorgeous.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/gorgeous.jpg"), filename: 'gorgeous.jpg',
content_type: 'image/jpg')
gorgeous.save

lite = Transport.new( {
    category: "Motorcycle",
    name: "Parallel Twin",
    description: "Lightweight, affordable, practical, and with a cool look ",
    price: "100",
    address: "Beverly, USA"
}
)
lite.owner = mario
lite.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/lite.jpg"), filename: 'lite.jpg',
content_type: 'image/jpg')
lite.save

famous = Transport.new( {
    category: "Motorcycle",
    name: "AMB 001",
    description: "One of the most striking design features is the Oxford Tan saddle",
    price: "150",
    address: "Aberdeen, British"
}
)
famous.owner = mario
famous.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/famous.jpg"), filename: 'famous.jpg',
content_type: 'image/jpg')
famous.save

adorable = Transport.new({
    category: "Rocket",
    name: "Mini rocket",
    description: "The little rocket from Rocket Factory will leave you speechless.",
    price: "560000",
    address: "Augsburg in Bavaria",
})
adorable.owner = elon_musk
adorable.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/adorable.jpg"), filename:
'adorable.jpg', content_type: 'image/png')
adorable.save

amaising = Transport.new({
    category: "Rocket",
    name: "RS-25 engines",
    description: "What could be more beautiful than NASA's newest moon?",
    price: "2000000",
    address: "NASA's Site",
})
amaising.owner = elon_musk
amaising.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/amaising.webp"), filename:
'amaising.webp', content_type: 'image/png')
amaising.save

fabulous = Transport.new({
    category: "Rocket",
    name: "Pink Rocket",
    description: "Let yourself be carried away by the beauty and design",
    price: "500000",
    address: "Mexico, South America",
})
fabulous.owner = elon_musk
fabulous.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/fabulous.jpg"), filename:
'fabulous.jpg', content_type: 'image/png')
fabulous.save

splandide = Transport.new({
    category: "Rocket",
    name: "Starship Hopper",
    description: "The latest incarnation of the spaceship will make you dream",
    price: "1500000",
    address: "FrancFort",
})
splandide.owner = elon_musk
splandide.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/splandide.jpg"), filename:
'splandide.jpg', content_type: 'image/png')
splandide.save

rigide = Transport.new( {
    category: "Bicycle",
    name: "VTT rigide adulte Cliff 700",
    description: "This mountain bike is fully accessorizable, compatible with kickstand, luggage rack and baby carrier.",
    price: "20",
    address: "Lyon"
}
)
rigide.owner = elon_musk
rigide.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/rigide.png"), filename: 'rigide.png',
content_type: 'image/jpg')
rigide.save

van = Transport.new( {
    category: "Bicycle",
    name: "VanMoof S3",
    description: "A classic rectilinear architecture, which houses all the technological innovations.",
    price: "50",
    address: "Paris"
}
)
van.owner = elon_musk
van.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/van.jpg"), filename: 'van.jpg',
content_type: 'image/jpg')
van.save

vtt = Transport.new( {
    category: "Bicycle",
    name: "LANKELEISI XT750",
    description: "Electric bike folding bike 80 km maximum load 120 kg with eu plug - Yellow",
    price: "30",
    address: "Angers"
}
)
vtt.owner = elon_musk
vtt.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/vtt.webp"), filename: 'vtt.webp',
content_type: 'image/jpg')
vtt.save

bus_electrique = Transport.new( {
    category: "Bus",
    name: "E-bus espagnols",
    description: "we want to do away with the cubic shape of buses, so opt for an electric and ecological model. ",
    price: "2000",
    address: "Orleans Metropolis"
}
)
bus_electrique.owner = kimi_raikkonen
bus_electrique.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/bus_electrique.webp"), filename: 'bus_electrique.webp',
content_type: 'image/jpg')
bus_electrique.save

charter_Bus = Transport.new( {
    category: "Bus",
    name: "Bus 500-C",
    description: "This is a difficult time to travel and this bus will engage you to make this time easier than ever",
    price: "1000",
    address: "British"
}
)
charter_Bus.owner = kimi_raikkonen
charter_Bus.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/charter_Bus.jpg"), filename:'charter_Bus.jpg',
content_type: 'image/jpg')
charter_Bus.save

e_bus = Transport.new( {
    category: "Bus",
    name: "IRIZAR",
    description: "Lighting the road",
    price: "500",
    address: "Francfort"
}
)
e_bus.owner = kimi_raikkonen
e_bus.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/e_bus.jpg"), filename:'e_bus.jpg',
content_type: 'image/jpg')
e_bus.save

hybride = Transport.new( {
    category: "Bus",
    name: "Iveco",
    description: "Let yourself be carried away by a bus equipped with air conditioning, video protection and USB ports",
    price: "300",
    address: "Paris"
}
)
hybride.owner = kimi_raikkonen
hybride.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/hybride.jpg"), filename:
'hybride.jpg',
content_type: 'image/jpg')
hybride.save

transport = Transport.new( {
    category: "Bus",
    name: "Optymo",
    description: "A choice motivated by an ecological ambition.",
    price: "1500",
    address: "London"
}
)
transport.owner = kimi_raikkonen
transport.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/transport.jpg"), filename:'transport.jpg',
content_type: 'image/jpg')
transport.save

tadao = Transport.new( {
    category: "Bus",
    name: "Tadoa",
    description: "Like the lithium-ion battery buses, they run without any polluting emissions",
    price: "300",
    address: "Yvelines, Pas-de-Calais and Pau"
}
)
tadao.owner = kimi_raikkonen
tadao.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/tadao.webp"), filename:'tadao.webp',content_type: 'image/jpg')
tadao.save

echappement = Transport.new( {
    category: "Scooter",
    name: "YASUNI Scooter 4",
    description: "This scooter offers a sporty look and more torque than the original versions",
    price: "50",
    address: "Marseilles, France"
})
echappement.owner = monsieur_patate
echappement.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/echappement.jpg"), filename: 'echappement.jpg', content_type: 'image/jpg')
echappement.save

little = Transport.new( {
    category: "Scooter",
    name: "Draisienne scooter",
    description: "Love rinding",
    price: "15",
    address: "Barcelona, Spain"
})
little.owner = monsieur_patate
little.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/little.jpg"), filename:'little.jpg', content_type: 'image/jpg')
little.save

lycke = Transport.new( {
    category: "Scooter",
    name: "Lycke Retro50",
    description: "Peaceful stroll",
    price: "20",
    address: "Lyon, France"
})
lycke.owner = monsieur_patate
lycke.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/lycke.jpg"), filename:'lycke.jpg', content_type: 'image/jpg')
lycke.save

orion = Transport.new( {
    category: "Scooter",
    name: "Orion Pro",
    description: "Pleasant, safe and fast driving",
    price: "25",
    address: "Aix-en-provence, France"
})
orion.owner = monsieur_patate
orion.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/orion.jpg"), filename:'orion.jpg', content_type: 'image/jpg')
orion.save

scooter_electrique = Transport.new( {
    category: "Scooter",
    name: "VERMEIREN Ceres 4 SE",
    description: "This comfortable and very practical Vermeiren SE electric scooter has adjustable handlebars, a front basket and front/rear shocks.",
    price: "100",
    address: "Hamm, Germany"
})
scooter_electrique.owner = monsieur_patate
scooter_electrique.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/scooter_electrique.jpg"), filename:'scooter_electrique.jpg', content_type: 'image/jpg')
scooter_electrique.save

rose = Transport.new( {
    category: "Scooter",
    name: "Homcom Moto",
    description: "Make your children even happier",
    price: "20",
    address: "London, UK"
})
rose.owner = monsieur_patate
rose.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/rose.webp"), filename:'rose.webp',
content_type: 'image/jpg')
rose.save
puts "Created #{Transport.count} transports"

chat = Transport.new( {
    category: "Animal",
    name: "Eliote",
    description: "Even more softness",
    price: "100",
    address: "Versailles"
}
)
chat.owner = kimi_raikkonen
chat.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/chat.jpg"), filename:'chat.jpg', content_type: 'image/jpg')
chat.save

chien = Transport.new( {
    category: "Animal",
    name: "Cabotin",
    description: "Your pet is your friend",
    price: "200",
    address: "Australia"
}
)
chien.owner = kimi_raikkonen
chien.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/chien.jpg"), filename:'chien.jpg', content_type: 'image/jpg')
chien.save

panda = Transport.new( {
    category: "Animal",
    name: "Gewa",
    description: "A rare animal, a unique animal ",
    price: "500",
    address: "New-York"
}
)
panda.owner = kimi_raikkonen
panda.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/panda.jpg"), filename:'panda.jpg', content_type: 'image/jpg')
panda.save

tigre = Transport.new( {
    category: "Animal",
    name: "Asha",
    description: "Discover the most beautiful species of the forest",
    price: "600",
    address: "Agadir, Morocco"
}
)
tigre.owner = kimi_raikkonen
tigre.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/tigre.jpg"), filename:'tigre.jpg',content_type: 'image/jpg')
tigre.save

zebre = Transport.new( {
    category: "Animal",
    name: "Luna",
    description: "This animal with exotic colors will carry you in a magnificent universe",
    price: "500",
    address: "Agadir, Morocco"
}
)
zebre.owner = kimi_raikkonen
zebre.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/zebre.jpg"), filename:
'zebre.jpg',
content_type: 'image/jpg')
zebre.save

boo = Transport.new( {
    category: "Animal",
    name: "Attila",
    description: "This little being will make your days more beautiful",
    price: "400",
    address: "Alpes"
}
)
boo.owner = kimi_raikkonen
boo.photo.attach(io: File.open("#{Rails.root}/app/assets/images/seeds/boo.webp"), filename:
'boo.webp',
content_type: 'image/jpg')
boo.save




#   Character.create(name: 'Luke', movie: movies.first)


# require "open-uri"

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')

# User.last.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# puts User.last.photo.attached?

