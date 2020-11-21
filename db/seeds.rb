# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pen.destroy_all
Pig.destroy_all

pen1 = Pen.create(name: "Party Pen", condition: "messy, sloppy, an overall weird time")

pig1 = Pig.create(name: "Wilbur", dirty: true, friend: "Charlotte", age: 3, pen: pen1)
pig2 = Pig.create(name: "Miss Piggy", dirty: false, friend: "Kermit", age: 23, pen: pen1)
pig3 = Pig.create(name: "Pig #3", dirty: true, friend: "Pig #1", age: 45, pen: pen1)
