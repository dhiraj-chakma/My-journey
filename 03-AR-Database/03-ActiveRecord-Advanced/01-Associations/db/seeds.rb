# TODO: Write a seed
require "faker"

puts 'Creating 5 fake users and each have 10 posts...'
5.times do
  # create fake data for user (username, email)
  user = User.new(
    username: Faker::Sports::Football.player,
    email: Faker::Internet.email
  )
  user.save!
  10.times do
    post = Post.new(
      title: Faker::Games::ClashOfClans.troop,
      url: Faker::Internet.domain_name,
      votes:  rand(0..50)
    )
    post.user = user
    post.save
  end
end
puts 'Finished!'
