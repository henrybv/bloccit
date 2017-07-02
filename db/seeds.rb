# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 
require 'random_data'

# Create Users
5.times do
 User.create!(
# #3
 name:     RandomData.random_name,
 email:    RandomData.random_email,
 password: RandomData.random_sentence
 )
end
users = User.all

# Create Topics
15.times do
 Topic.create!(
   name:         RandomData.random_sentence,
   description:  RandomData.random_paragraph
 )
end
topics = Topic.all

# Create Posts
50.times do
 # #1
  Post.create!(
    user:   users.sample,
 	  topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all
 
# Create Comments
# #3
100.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create Questions
# #3
100.times do
  Question.create!(
  	title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end

puts "#{Post.count}"
Post.find_or_create_by(title: "A unique title", body: "A unique body")
puts "#{Post.count}"

user = User.first
 user.update_attributes!(
   email: 'hbn2018@icloud.com', # replace this with your personal email
   password: 'helloworld'
 )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} question created"

