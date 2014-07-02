# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Mood.destroy_all

Mood.create([{name: "Happy"},{name: "Sad"},{name: "Anger"},{name: "Rage"},{name: "Boredom"},{name: "Drunk"},{name: "Elated"},{name: "Frustrated"},{name: "Hateful"},{name: "High"},{name: "Hysteria"},{name: "Melancholy"},{name: "Party"},{name: "Pensive"},{name: "Relaxed"},{name: "Tired"}])

User.create([{username: "tom", password: "blue", user_id: "1", first_name: "Tom", last_name: "Mitchell", email: "tmitche831@gmail.com"}])
User.create([{username: "rich", password: "admin", user_id: "2", first_name: "Rich", last_name: "Field", email: "richfield14@gmail.com"}])