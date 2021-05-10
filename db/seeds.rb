# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting database"
User.destroy_all


julian = User.create!(username: 'julian', leader: false, email: "julian@gmail.com", password: "julian")
tieu = User.create!(username: 'tieu', leader: true, email: "tieu@gmail.com", password: "tieu")

big_calendar = Calendar.create!(user: tieu)

time_slots = TimeSlot.create!(calendar: big_calendar, start: )
