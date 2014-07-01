# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Mood.destroy_all

Mood.create([{name: "Happy"},{name: "Sad"},{name: "Anger"},{name: "Rage"},{name: "Boredom"},{name: "Drunk"},{name: "Elated"},{name: "Frustrated"},{name: "Hateful"},{name: "High"},{name: "Hysteria"},{name: "Melancholy"},{name: "Party"},{name: "Pensive"},{name: "Relaxed"},{name: "Tired"}])