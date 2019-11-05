# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
user = ["Pol-Ewan"]
event = []
chiffre_multiple_5 = [5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100]

10.times do 

event << Event.create(start_date: Faker::Date.forward(days: 28) , duration: chiffre_multiple_5.sample , title: Faker::Beer.name , description: Faker::Lorem.sentence(word_count: 10) , price: Faker::Number.between(from: 2, to: 999) , location: Faker::Address.city, administrator: user.sample)
puts "Event: #{Faker::Book.title}"
end
