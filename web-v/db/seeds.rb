# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'



(1..5).each do |i|
  User.create!(
    name: Faker::Name.unique.name,
    email: "sample-#{i}@example.com",
    password: "password"
  )
end

User.all.each do |user|
  (1..5).each do |i|
    movie = Faker::Movie
    user.posts.create!(
      title: movie.title,
      content: movie.quote
    )
  end
end
