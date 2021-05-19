# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroy Movies"
Movie.destroy_all
puts "Destroy Props"
Prop.destroy_all
puts "Destroy Users"
User.destroy_all
Booking.destroy_all

puts "Creating 3 users"
user1 = User.create!(email: "flo@go.com", password: "azerty")
user2 = User.create!(email: "lisa@go.com", password: "azerty")
user3 = User.create!(email: "steven@go.com", password: "azerty")
puts "Done"

puts "Creating 3 bookings"
booking_1 = Booking.create(date: Date.today, status: 1, user: user1, prop: Prop.all.sample)
booking_2 = Booking.create(date: Date.tomorrow, status: 0, user: user2, prop: Prop.all.sample)
booking_3 = Booking.create(date: (Date.today + 15), status: 2, user: user1, prop: Prop.all.sample)
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
dark_vador = Prop.create!(category: "costume", name: "Tenue de Dark Vador", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: star_wars, user: user1)
helmet_stormtrooper = Prop.create!(category: "accessoire", name: "Casque de Stormtrooper", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 60, movie: star_wars, user: user1)
yoda = Prop.create!(category: "personnage", name: "Yoda", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: star_wars, user: user1)
r2d2 = Prop.create!(category: "personnage", name: "R2-D2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: star_wars, user: user1)
throne = Prop.create!(category: "accessoire", name: "Trône de fer", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 130, movie: got, user: user1)
ring_got = Prop.create!(category: "bijou", name: "Bague de Daenerys", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: got, user: user1)
manteau = Prop.create!(category: "costume", name: "Manteau de John Snow", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 40, movie: got, user: user1)
white_walker = Prop.create!(category: "personnage", name: "White Walker", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: got, user: user1)
machine_ecrire = Prop.create!(category: "accessoire", name: "Machine à écrire", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: shinning, user: user1)
baguette_hp = Prop.create!(category: "accessoire", name: "Baguette d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 60, movie: harry_potter, user: user1)
balai_hp = Prop.create!(category: "véhicule", name: "Balai d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: harry_potter, user: user1)
vif_or_hp = Prop.create!(category: "accessoire", name: "Vif d'or d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: harry_potter, user: user1)
chapeau_hp = Prop.create!(category: "accessoire", name: "Chapeau d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: harry_potter, user: user2)
lunettes_hp = Prop.create!(category: "accessoire", name: "Lunnettes d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: harry_potter, user: user2)
livre_hp = Prop.create!(category: "accessoire", name: "Livre de potion d'Harry Potter", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 15, movie: harry_potter, user: user2)
skate_retour_futur = Prop.create!(category: "accessoire", name: "Overboard de Marty McFly", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: retour_futur, user: user2)
guitar_retour_futur = Prop.create!(category: "accessoire", name: "Guitare de Marty McFly", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 70, movie: retour_futur, user: user2)
dolorean = Prop.create!(category: "véhicule", name: "Dolorean", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: retour_futur, user: user2)
gun_jb = Prop.create!(category: "arme", name: "Gun de James Bond", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 350, movie: james_bond, user: user2)
voiture = Prop.create!(category: "véhicule", name: "Aston Martin DB5 de James Bond", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 400, movie: james_bond, user: user2)
bague_intelligente = Prop.create!(category: "bijou", name: "Bague intelligente de James Bond", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: james_bond, user: user2)
marteau = Prop.create!(category: "accessoire", name: "Marteau de Thor", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: avengers, user: user2)
bouclier = Prop.create!(category: "accessoire", name: "Bouclier de Captain America", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: avengers, user: user2)
jeep = Prop.create!(category: "véhicule", name: "Jeep Wrangler de Jurassic Park", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: jurassik_park, user: user2)
costume_ce = Prop.create!(category: "costume", name: "Costume Leeloo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 70, movie: cinquieme_element, user: user2)
arc = Prop.create!(category: "accessoire", name: "Arc d'Avatar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 180, movie: avatar, user: user2)
bijou = Prop.create!(category: "bijou", name: "Bijou d'Avatar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: avatar, user: user2)
canape = Prop.create!(category: "accessoire", name: "Canapé de Friends", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: friends, user: user2)
tshirt_sheldon = Prop.create!(category: "costume", name: "T-shirt de Sheldon", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: big_bang_theory, user: user2)
waitress_uniform = Prop.create!(category: "costume", name: "Tenue de serveuse de Penny", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: big_bang_theory, user: user2)
sheldon_spot = Prop.create!(category: "accessoire", name: "Canapé de Sheldon", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: big_bang_theory, user: user2)
jack_sparrow_costume = Prop.create!(category: "costume", name: "Costume de Jack Sparrow", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 110, movie: pirates_des_caraibes, user: user2)
sabre= Prop.create!(category: "arme", name: "Sabre de Jack Sparrow", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 180, movie: pirates_des_caraibes, user: user2)
radeau = Prop.create!(category: "véhicule", name: "Radeau de Rose et un peu de Jack", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: titanic, user: user2)
costume_pb = Prop.create!(category: "costume", name: "Costume de Thomas Shelby", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 1200, movie: peaky_blinders, user: user2)
zombie = Prop.create!(category: "personnage", name: "Zombie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: walking_dead, user: user2)
mask_combi = Prop.create!(category: "costume", name: "Masque et combinaison de Zombie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: casa_de_papel, user: user2)
negan_bat = Prop.create!(category: "arme", name: "Batte de Nega", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: walking_dead, user: user2)
manteau_matrix = Prop.create!(category: "costume", name: "Manteau de Neo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: matrix, user: user2)
sunglasses_matrix = Prop.create!(category: "accessoire", name: "Lunettes noires de Neo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 20, movie: matrix, user: user2)
batmobile = Prop.create!(category: "véhicule", name: 'BatMobile', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 350, movie: batman, user: user2)
joker_cards = Prop.create!(category: "accessoire", name: 'Cartes du Joker', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 10, movie: batman, user: user2)
batman_cape = Prop.create!(category: "costume", name: 'Cape de Batman', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: batman, user: user2)
batmoto = Prop.create!(category: "véhicule", name: 'BatMoto', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 300, movie: batman, user: user2)
bane_mask = Prop.create!(category: "accessoire", name: 'Masque de Bane', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: batman, user: user2)
ring_lord = Prop.create!(category: "bijou", name: 'L\'anneau Unique', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: lord_rings, user: user2)
gandalf_baton = Prop.create!(category: "accessoire", name: 'Le bâton magique de Gandalf', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 170, movie: lord_rings, user: user2)
legolas_arc = Prop.create!(category: "arme", name: 'L\'arc de Légolas', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: lord_rings, user: user2)
aragon_sword = Prop.create!(category: "arme", name: 'L\'épée reforgée d\'Aragorn', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 190, movie: lord_rings, user: user2)
gimmli_hache = Prop.create!(category: "arme", name: 'La hâche de Gimli', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: lord_rings, user: user2)
combi_killbill = Prop.create!(category: "costume", name: 'Combinaison de Beatrix Kiddo', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: kill_bill, user: user3)
sabre_killbill = Prop.create!(category: "arme", name: 'Katana de Beatrix Kiddo', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 150, movie: kill_bill, user: user3)
cercueil_killbill = Prop.create!(category: "accessoire", name: 'Cercueil de Beatrix Kiddo', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 100, movie: kill_bill, user: user3)
armure_ironman = Prop.create!(category: "costume", name: 'Armure d\'Iron-Man', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 200, movie: iron_man, user: user3)
car_ironman = Prop.create!(category: "véhicule", name: 'L\'Audi eTron GT de Tony Stark', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 500, movie: iron_man, user: user3)
glasses_terminator = Prop.create!(category: "accessoire", name: 'Lunettes de Terminator', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 50, movie: terminator, user: user3)
gun_terminator = Prop.create!(category: "arme", name: 'Winchester de Terminator', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 80, movie: terminator, user: user3)
arm_terminator = Prop.create!(category: "arme", name: 'Bras robotisée de Terminator', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 40, movie: terminator, user: user3)
chapeau_indiana = Prop.create!(category: "accessoire", name: 'Chapeau d\'Indiana Jones', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: indiana_jones, user: user3)
lasso_indiana = Prop.create!(category: "accessoire", name: 'Lasso d\'Indiana Jones', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 30, movie: indiana_jones, user: user3)
skull_indiana = Prop.create!(category: "bijou", name: 'Crâne de Cristal', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 90, movie: indiana_jones, user: user3)
moto_indiana = Prop.create!(category: "véhicule", name: 'Moto d\'Indiana Jones', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tempus tellus, vel dignissim metus.", price: 180, movie: indiana_jones, user: user3)
puts "Done !!"
























