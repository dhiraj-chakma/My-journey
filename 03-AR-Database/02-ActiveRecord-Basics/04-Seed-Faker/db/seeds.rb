require "faker"
require_relative "../app/models/post"

# TODO: Write a seed to insert 100 posts in the database
puts 'Creating 100 fake posts...'
100.times do
  post = Post.new(
    title: Faker::JapaneseMedia::CowboyBebop.character, url: Faker::Internet.url, votes: rand(0..200)
  )
  post.save
end

puts "finished"
