require_relative "../views/posts_view"
require_relative "../models/post"


class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    posts = Post.all
    # TODO: give them to the view to be printed
    @view.display(posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    # ake the iputs for posts

    # save the inputs as posts
    post = Post.new(
      title: @view.gets_title,
      url: @view.gets_url,
      votes: @view.gets_votes
    )
    post.save
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    # which post to update
    post = Post.find(@view.gets_post)
    # take the title and url
    post.title = @view.gets_title
    post.url = @view.gets_url
    # update the data
    post.save
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    # take the id that user wants to delete
    post = Post.find(@view.gets_post)
    post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    post = Post.find(@view.gets_post)
    post.votes += @view.vote
    post.save
  end
end
