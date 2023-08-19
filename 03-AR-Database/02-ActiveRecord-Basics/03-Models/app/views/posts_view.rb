class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def display(posts)
    posts.each { |post| puts "#{post.id} -> #{post.title} -> #{post.url} -> #{post.votes}" }
  end

  def gets_title
    puts "what is the titles"
    gets.chomp
  end

  def gets_url
    puts "what is the url"
    gets.chomp
  end

  def gets_votes
    puts "vote from 1-100"
    gets.chomp
  end

  def gets_post
    puts "which post?"
    gets.chomp
  end

  def vote
    puts "how much to vote?"
    gets.chomp.to_i
  end
end
