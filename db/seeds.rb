# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

file = URI.open("https://source.unsplash.com/random/#{}")

puts "Destroy Movies"
Movie.destroy_all
puts "Destroy Props"
Prop.destroy_all
puts "Destroy Users"
User.destroy_all
Booking.destroy_all

puts "Creating 3 users"
user1 = User.create!(email: "flo@go.com", password: "azerty", producer: true)
user2 = User.create!(email: "lisa@go.com", password: "azerty")
user3 = User.create!(email: "steven@go.com", password: "azerty")
puts "Done"

puts "Creating 24 movies"
star_wars = Movie.create!(name: "Star Wars")
got = Movie.create!(name: "Game of thrones")
shinning = Movie.create!(name: "The Shinning")
harry_potter = Movie.create!(name: "Harry Potter")
retour_futur = Movie.create!(name: "Retour vers le futur")
batman = Movie.create!(name: "Batman")
lord_rings = Movie.create!(name: "Lord of the rings")
kill_bill = Movie.create!(name: "Kill Bill")
iron_man = Movie.create!(name: "Iron Man")
matrix = Movie.create!(name: "Matrix")
terminator = Movie.create!(name: "Terminator")
indiana_jones = Movie.create!(name: "Indiana Jones")
avengers = Movie.create!(name: "Avengers")
avatar = Movie.create!(name: "Avatar")
friends = Movie.create!(name: "Friends")
big_bang_theory = Movie.create!(name: "Big bang theory")
pirates_des_caraibes = Movie.create!(name: "Pirates des caraïbes")
peaky_blinders = Movie.create!(name: "Peaky blinders")
walking_dead = Movie.create!(name: "Walking dead")
casa_de_papel = Movie.create!(name: "Casa de papel")
titanic = Movie.create!(name: "Titanic")
cinquieme_element = Movie.create!(name: "Le Cinquieme élément")
jurassik_park = Movie.create!(name: "Jurassik Park")
james_bond = Movie.create!(name: "James Bond")
puts "Done"

puts "Creating 63 props"
sabre_laser = Prop.create!(category: "arme", name: "Sabre Laser de Maître Yoda", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: star_wars, user: user1)
sabre_laser.photo.attach(io: File.open('app/assets/images/yoda.jpg'), filename: 'yoda.jpg', content_type: 'image/jpg')


dark_vador = Prop.create!(category: "costume", name: "Tenue de Dark Vador", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: star_wars, user: user1)
dark_vador.photo.attach(io: File.open('app/assets/images/dark-vador.jpg'), filename: 'dark-vador.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Casque de Stormtrooper", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 60, movie: star_wars, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "personnage", name: "Yoda", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: star_wars, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "personnage", name: "R2-D2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: star_wars, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Trône de fer", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 130, movie: got, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "bijou", name: "Bague de Daenerys", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: got, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "Manteau de John Snow", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 40, movie: got, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "personnage", name: "White Walker", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: got, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Machine à écrire", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: shinning, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Baguette d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 60, movie: harry_potter, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: "Balai d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: harry_potter, user: user1)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Vif d'or d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: harry_potter, user: user1)
prop.photo.attach(io: File.open('app/assets/images/vif.jpg'), filename: 'vif.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Chapeau d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: harry_potter, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Lunnettes d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: harry_potter, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Livre de potion d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 15, movie: harry_potter, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')


overboard = Prop.create!(category: "accessoire", name: "Overboard de Marty McFly", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: retour_futur, user: user2)
overboard.photo.attach(io: File.open('app/assets/images/skate.jpg'), filename: 'skate.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Guitare de Marty McFly", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 70, movie: retour_futur, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: "Dolorean", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: retour_futur, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: "Gun de James Bond", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 350, movie: james_bond, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: "Aston Martin DB5 de James Bond", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 400, movie: james_bond, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "bijou", name: "Bague intelligente de James Bond", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: james_bond, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Marteau de Thor", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: avengers, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Bouclier de Captain America", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: avengers, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: "Jeep Wrangler de Jurassic Park", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: jurassik_park, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "Costume Leeloo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 70, movie: cinquieme_element, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Arc d'Avatar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 180, movie: avatar, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "bijou", name: "Bijou d'Avatar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: avatar, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Canapé de Friends", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: friends, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "T-shirt de Sheldon", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: big_bang_theory, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "Tenue de serveuse de Penny", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: big_bang_theory, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Canapé de Sheldon", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: big_bang_theory, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "Costume de Jack Sparrow", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 110, movie: pirates_des_caraibes, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: "Sabre de Jack Sparrow", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 180, movie: pirates_des_caraibes, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

radeau = Prop.create!(category: "vehicule", name: "Radeau de Rose et un peu de Jack", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: titanic, user: user2)
radeau.photo.attach(io: File.open('app/assets/images/titanic.jpg'), filename: 'titanic.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "Costume de Thomas Shelby", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 1200, movie: peaky_blinders, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "personnage", name: "Zombie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: walking_dead, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "Masque et combinaison de Zombie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: casa_de_papel, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: "Batte de Nega", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: walking_dead, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: "Manteau de Neo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: matrix, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: "Lunettes noires de Neo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: matrix, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: 'BatMobile', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 350, movie: batman, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: 'Cartes du Joker', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 10, movie: batman, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

batman_cape = Prop.create!(category: "costume", name: 'Cape de Batman', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: batman, user: user2)
batman_cape.photo.attach(io: File.open('app/assets/images/batman.jpg'), filename: 'batman.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: 'BatMoto', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 300, movie: batman, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: 'Masque de Bane', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: batman, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "bijou", name: 'L\'anneau Unique', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: lord_rings, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: 'Le bâton magique de Gandalf', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 170, movie: lord_rings, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: 'L\'arc de Légolas', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: lord_rings, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: 'L\'épée reforgée d\'Aragorn', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 190, movie: lord_rings, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: 'La hâche de Gimli', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: lord_rings, user: user2)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "costume", name: 'Combinaison de Beatrix Kiddo', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: kill_bill, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: 'Katana de Beatrix Kiddo', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: kill_bill, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

cercueil_killbill = Prop.create!(category: "accessoire", name: 'Cercueil de Beatrix Kiddo', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: kill_bill, user: user3)
cercueil_killbill.photo.attach(io: File.open('app/assets/images/kill_bill.jpg'), filename: 'kill_bill.jpg', content_type: 'image/jpg')

armure_ironman = Prop.create!(category: "costume", name: 'Armure d\'Iron-Man', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: iron_man, user: user3)
armure_ironman.photo.attach(io: File.open('app/assets/images/iron_man.jpg'), filename: 'iron_man.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: 'L\'Audi eTron GT de Tony Stark', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 500, movie: iron_man, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: 'Lunettes de Terminator', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: terminator, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: 'Winchester de Terminator', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: terminator, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "arme", name: 'Bras robotisée de Terminator', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 40, movie: terminator, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: 'Chapeau d\'Indiana Jones', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: indiana_jones, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "accessoire", name: 'Lasso d\'Indiana Jones', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: indiana_jones, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "bijou", name: 'Crâne de Cristal', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: indiana_jones, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')

prop = Prop.create!(category: "vehicule", name: 'Moto d\'Indiana Jones', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 180, movie: indiana_jones, user: user3)
file = URI.open("https://source.unsplash.com/random/#{prop.category}")
prop.photo.attach(io: File.open(file), filename: 'random.jpg', content_type: 'image/jpg')
puts "Done !!"

puts "Creating 3 bookings"
booking_1 = Booking.create!(date: Date.today, status: 1, user: user2, prop: Prop.where(name: "Sabre Laser de Maître Yoda").first)
booking_2 = Booking.create(date: Date.tomorrow, status: 0, user: user2, prop: Prop.all.sample)
booking_3 = Booking.create(date: (Date.today + 15), status: 2, user: user1, prop: Prop.all.sample)
puts "Done"