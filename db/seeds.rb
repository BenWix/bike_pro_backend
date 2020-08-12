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

ben.bikes.create(bike_type: 'full_sus', strava_id: '7832517', name: 'Kona Process 134 DL')
ben.bikes.create(bike_type: 'road', miles: '247', name: 'unknown road bike')

meghan = User.create(name: 'Meghan', email: 'meghan@meghan.com', phone: '260')

meghan.bikes.create(bike_type: 'hard tail', miles: '40', name: 'Specialized Rockhopper')

will = User.create(name: 'Will', email: 'will@will.com', phone: '502')


mason = User.create(name: 'Mason', email: 'mason@mason.com', phone: '692')

mason.bikes.create(bike_type: 'full_sus', miles: '124', name: 'Kona Process 153 CR/DL')
mason.bikes.create(bike_type: 'ridgid', miles: '732', name: 'custome steel bike')
mason.bikes.create(bike_type: 'gravel', miles: '382', name: 'allcity gravel bike')

olivia = User.create(name: 'Olivia', email: 'olivia@olivia.com', phone: '442')


cheyenne = User.create(name: 'Cheyenne', email: 'cheyenne@cheyenne.com', phone: '273')


