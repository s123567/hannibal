# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users

User.destroy_all
Quote.destroy_all


User.create!(
             email: "example@hannibal.org",
             name: "hannibal",
             password:              "testtest",
             password_confirmation: "testtest")


15.times do |n|
  email = "example-#{n+1}@hannibal.org"
  name = "hannibal-#{n+1}"
  password = "testtest"
  User.create!(
               email: email,
               name: name,
               password:              password,
               password_confirmation: password
               )
end

# Microposts
users = User.order(:created_at).take(6)
10.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.quotes.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..12]
followers = users[3..10]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }


lee = User.create!(email: 'lee@lee.com', name:"Bruce", password: 'testtest')

File.open("public/lee.txt", "r").each_line do |quote|
  Quote.create!(content: quote.chomp, user:lee)
end

einstein = User.create!(email: 'einstein@einstein.com', name:'Albert', password: 'testtest')

File.open("public/einstein.txt", "r").each_line do |quote|
  Quote.create!(content: quote.chomp, user:einstein)
end

wilde = User.create!(email: 'wilde@wilde.com', name:'Oscar', password: 'testtest')

File.open("public/wilde.txt", "r").each_line do |quote|
  Quote.create!(content: quote.chomp, user:wilde)
end

# bob = User.create!(email: 'bob@bob.com', password: 'testtest')
# joe = User.create!(email: 'joe@joe.com', password: 'testtest')

# q1 = Quote.create!(content: "quote1", user: bob)
# Quote.create!(content: "quote2", user: bob)
# Quote.create!(content: "quote3", user: bob)

# q4 = Quote.create!(content: "quote4", user: joe)

# Quote.create!(content: "quote5", user: joe)
# Quote.create!(content: "quote6", user: joe)
# Quote.create!(content: "quote7", user: joe)

# #upvotes
# q1.upvotes.create! user: joe
# q4.upvotes.create! user: joe