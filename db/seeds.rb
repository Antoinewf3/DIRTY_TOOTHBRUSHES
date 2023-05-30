# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Toothbrush.destroy_all
Toothbrush.create(category: "Used", price: 17)
Toothbrush.create(category: "Used+", price: 15)
Toothbrush.create(category: "Used++", price: 13)
Toothbrush.create(category: "Used-", price: 20)
puts "Created #{Toothbrush.count} toothbrushes"
