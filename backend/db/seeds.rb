# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

carmeet = Meet.create(owner: "Fred", location: "Miami", title: "South Beach Racing", date_time: "10:10 Friday")
carmeet.remarks.build(owner: "Drew", content: "South Beach is the spot")
carmeet.save
