require "json"
require "rest-client"
require_relative "../app/models/post"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"
repos = JSON.parse(response)

puts 'Creating 10 fake posts...'

repos.each do |news_post|
  arr ={}
  arr["id"] = "https://hacker-news.firebaseio.com/v0/item/#{news_post}.json"
  10.times do
    post = Post.new(
      arr
    )
    post.save
  end
end
puts "finished"
