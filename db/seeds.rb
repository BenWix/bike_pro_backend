# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Bike.delete_all
Repair.delete_all

ben = User.create(name: 'Ben', email: 'ben@ben.com', phone: '317')

blue_kona = ben.bikes.create(bike_type: 'Full Suspension', miles: 31,name: 'Kona Process 134 DL')

weird_bike = ben.bikes.create(bike_type: 'Road Bike', miles: 247, name: 'unknown road bike')
weird_bike.repairs.create(repair_type: 'Drive Train',miles: 225)
weird_bike.repairs.create(repair_type: 'Tires',miles: 225)


meghan = User.create(name: 'Meghan', email: 'meghan@meghan.com', phone: '260')

rockhopper = meghan.bikes.create(bike_type: 'Hardtail', miles: 40, name: 'Specialized Rockhopper')

will = User.create(name: 'Will', email: 'will@will.com', phone: '502')

stache = will.bikes.create(bike_type: 'Hardtail', miles: 192, name: 'Trek Stache 5')
stache.repairs.create(repair_type: 'Suspension',miles: 50)
stache.repairs.create(repair_type: 'Tires',miles: 100)

mason = User.create(name: 'Mason', email: 'mason@mason.com', phone: '692')

purple_kona = mason.bikes.create(bike_type: 'Full Suspension', miles: 124, name: 'Kona Process 153 CR/DL')

purple_kona.repairs.create(repair_type: 'Tires',miles: 75)
purple_kona.repairs.create(repair_type: 'Drivetrain',miles: 100)
purple_kona.repairs.create(repair_type: 'Suspension',miles: 100)


mule = mason.bikes.create(bike_type: 'Hardtail', miles: 732, name: 'custome steel bike')
all_city = mason.bikes.create(bike_type: 'Road Bike', miles: 382, name: 'allcity gravel bike')

olivia = User.create(name: 'Olivia', email: 'olivia@olivia.com', phone: '442')


cheyenne = User.create(name: 'Cheyenne', email: 'cheyenne@cheyenne.com', phone: '273')


