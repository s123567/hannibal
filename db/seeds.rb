# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create!(email: 'bob@bob.com', password: 'testtest', password_confirmation: 'testtest')
joe = User.create!(email: 'joe@joe.com', password: 'testtest', password_confirmation: 'testtest')

Quote.create!(content: "quote1", user: bob)
Quote.create!(content: "quote2", user: bob)
Quote.create!(content: "quote3", user: bob)
Quote.create!(content: "quote4", user: joe)
Quote.create!(content: "quote5", user: joe)
Quote.create!(content: "quote6", user: joe)
Quote.create!(content: "quote7", user: joe)